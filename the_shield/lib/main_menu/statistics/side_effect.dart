import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_shield/main_menu/side_effect_monitoring/timeline2.dart';


class StatisticsSideEffectScreen extends StatefulWidget {
  const StatisticsSideEffectScreen({Key? key}) : super(key: key);

  @override
  _StatisticsSideEffectScreenState createState() =>
      _StatisticsSideEffectScreenState();
}

class _StatisticsSideEffectScreenState
    extends State<StatisticsSideEffectScreen> {
  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');


  final List<ChartDataLine> chartDataLine = [
    ChartDataLine('2010', 10, 40, 45, 50),
    ChartDataLine('2011', 10, 20, 45, 50),
    ChartDataLine('2012', 10, 40, 45, 50),
    ChartDataLine('2013', 10, 40, 45, 50),
  ];

  final List<ChartData> chartData = [
    ChartData(1, 35),
    ChartData(2, 23),
    ChartData(3, 34),
    ChartData(4, 25),
    ChartData(5, 40),
    ChartData(5, 45),
    ChartData(5, 48),
    ChartData(5, 50),
    ChartData(5, 52),
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
                'SideEffects',
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
                        'Low',
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
                        'Medium',
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
                        'High',
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
                      Text(
                        'Weekly Statistics',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SfCartesianChart(
                          series: <ChartSeries<ChartData, int>>[
                            // Renders column chart
                            ColumnSeries<ChartData, int>(
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y
                            )
                          ]
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
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
