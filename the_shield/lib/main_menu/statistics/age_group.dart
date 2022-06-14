import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../side_effect_monitoring/timeline.dart';

class AgeGroupScreen extends StatefulWidget {
  const AgeGroupScreen({Key? key}) : super(key: key);

  @override
  _AgeGroupScreenState createState() =>
      _AgeGroupScreenState();
}

class _AgeGroupScreenState
    extends State<AgeGroupScreen> {
  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');
  final AssetImage male = const AssetImage('assets/images/male.png');
  final AssetImage female = const AssetImage('assets/images/female.jpeg');

  final List<ChartData> chartData = [
    ChartData('David', 25, Color.fromRGBO(92, 2, 187, 1.0)),
    ChartData('Steve', 38, Color.fromRGBO(255, 124, 233, 1.0)),
    ChartData('Jack', 34, Color.fromRGBO(55, 118, 255, 1.0)),
    ChartData('Others', 52, Color.fromRGBO(182, 107, 243, 1.0))
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
                'Age group',
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
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    // color: Colors.transparent,
                      color: Color(0xffffffff),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(image: female, width: 50,height: 50,),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Female',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 18)),
                                  Text('255 259',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 25)),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(image: male,width: 50,height: 50,),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Male',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 18)),
                                  Text('456 759',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 25)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(image: female, width: 50,height: 50,),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Female',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 18)),
                                  Text('255 259',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 25)),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(image: male,width: 50,height: 50,),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Male',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 18)),
                                  Text('456 759',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 25)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
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
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text('4%',
                              style:
                              TextStyle(color: Colors.white, fontSize: 22)),
                        ),
                        SfCircularChart(
                            series: <CircularSeries>[
                          DoughnutSeries<ChartData, String>(
                            dataSource: chartData,
                              pointColorMapper:(ChartData data,  _) => data.color,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              dataLabelMapper: (ChartData data, _) => data.x,
                              dataLabelSettings: DataLabelSettings(
                                // Renders the data label
                                  isVisible: false
                              ),
                              // Radius of doughnut
                              innerRadius: '60%',
                              radius: '110%')
                        ]),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text('34%',
                              style:
                              TextStyle(color: Colors.white, fontSize: 22)),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('62%',
                              style:
                              TextStyle(color: Colors.white, fontSize: 22)),
                        ),
                      ],
                    )),
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

class ChartDataBar {
  ChartDataBar(this.x, this.y);
  final int x;
  final double y;
}