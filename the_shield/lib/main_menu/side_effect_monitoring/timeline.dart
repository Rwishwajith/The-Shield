import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_shield/main_menu/side_effect_monitoring/timeline2.dart';


class SideEffectTimelineScreen extends StatefulWidget {
  const SideEffectTimelineScreen({Key? key}) : super(key: key);

  @override
  _SideEffectTimelineScreenState createState() =>
      _SideEffectTimelineScreenState();
}

class _SideEffectTimelineScreenState
    extends State<SideEffectTimelineScreen> {
  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');

  final List<ChartData> chartData = [
    ChartData('David', 25, Color.fromRGBO(9, 0, 136, 1)),
    ChartData('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
    ChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
    ChartData('Others', 52, Color.fromRGBO(255, 189, 57, 1))
  ];

  final List<ChartDataLine> chartDataLine = [
    ChartDataLine('2010', 10, 40, 45, 50),
    ChartDataLine('2011', 10, 20, 45, 50),
    ChartDataLine('2012', 10, 40, 45, 50),
    ChartDataLine('2013', 10, 40, 45, 50),
  ];


  final List<ChartDataBar> chartDataBar = [
    ChartDataBar(2010, 35),
    ChartDataBar(2011, 28),
    ChartDataBar(2012, 34),
    ChartDataBar(2013, 32),
    ChartDataBar(2014, 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcbc5f9),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 140.0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          title: Image(image: logoImage, width: 50, height: 50),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 130.0, left: 20.0),
            child: Container(
              height: 50,
              child: Text(
                'Timeline',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          border: Border.all(color: Colors.purple),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        'TODAY',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        'WEEK',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          // color: Color(0xff3a2f4b),
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        'MONTH',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      // color: Colors.transparent,
                        color: Color(0xff3a2f4b),
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child:
                    SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <ChartSeries>[
                          StackedLineSeries<ChartDataLine, String>(
                              dataSource: chartDataLine,
                              xValueMapper: (ChartDataLine data, _) => data.x,
                              yValueMapper: (ChartDataLine data, _) => data.y1
                          ),
                          StackedLineSeries<ChartDataLine, String>(
                              dataSource: chartDataLine,
                              xValueMapper: (ChartDataLine data, _) => data.x,
                              yValueMapper: (ChartDataLine data, _) => data.y2
                          ),
                          StackedLineSeries<ChartDataLine, String>(
                              dataSource: chartDataLine,
                              xValueMapper: (ChartDataLine data, _) => data.x,
                              yValueMapper: (ChartDataLine data, _) => data.y3
                          ),
                          StackedLineSeries<ChartDataLine, String>(
                              dataSource: chartDataLine,
                              xValueMapper: (ChartDataLine data, _) => data.x,
                              yValueMapper: (ChartDataLine data, _) => data.y4
                          ),
                        ]
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    // color: Colors.transparent,
                      color: Color(0xff3a2f4b),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 8,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Headache',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                            ],
                          ),
                          Text('2 H',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 8,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Headache',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                            ],
                          ),
                          Text('2 H',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 8,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Headache',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                            ],
                          ),
                          Text('2 H',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 8,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Headache',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                            ],
                          ),
                          Text('2 H',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => SecondSideEffectTimelineScreen(),
                      ),
                    );
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          border: Border.all(color: Colors.purple),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}

class ChartDataLine {
  ChartDataLine(this.x,this.y1, this.y2, this.y3, this.y4);

  final String x;
  final double y1;
  final double y2;
  final double y3;
  final double y4;
}

class ChartDataBar {
  ChartDataBar(this.x, this.y);
  final int x;
  final double y;
}
