import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../vaccine_compatibility.dart';

class SideEffectHistoryScreen extends StatefulWidget {
  const SideEffectHistoryScreen({Key? key}) : super(key: key);

  @override
  _SideEffectHistoryScreenState createState() =>
      _SideEffectHistoryScreenState();
}

class _SideEffectHistoryScreenState extends State<SideEffectHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final AssetImage logoImage =
    const AssetImage('assets/images/shield_logo.png');

    List<dynamic> sideEffectListHistory = [
      {"title": "12", "sub": 'Total side effects'},
      {"title": "3", "sub": 'severe side effects'},
      {"title": "00", "sub": '4.6'},
    ];

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
          title: Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: Image(image: logoImage, width: 50, height: 50),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 160.0, left: 20.0),
            child: Container(
              height: 50,
              child: Text(
                'Side Effects History',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Color(0x0ff3a2f4b),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Select the date',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ),
                            Text(
                              'Sun, Jan 24',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Color(0xff3a2f4b),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
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
                            Text(
                              '18/02/2022',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              '3 Days',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red.shade900,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fever',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              'View',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '18/02/2022',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              '12 Days',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.red.shade900,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Chronic Joint Pain',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              'View',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '18/02/2022',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              '4 Days',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.green,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.green,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.green,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.green,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.green.shade900,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Headache',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              'View',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '18/02/2022',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              '3 Days',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.orange,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.orange,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.orange,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.orange,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.orange.shade700,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Feaver',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              'View',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
                        'This Year',
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
                        'Week',
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
                        'Month',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: sideEffectListHistory.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 12,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: 200,
                        height: 80,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            color: Color(0xff3a2f4b),
                            border: Border.all(color: Color(0xff3a2f4b)),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sideEffectListHistory[index]['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              sideEffectListHistory[index]['sub'],
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => SecondSideEffectHistoryScreen(),
                      ),
                    );
                  },
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
              ],
            ),
          ),
        ));
  }
}

class SecondSideEffectHistoryScreen extends StatefulWidget {
  const SecondSideEffectHistoryScreen({Key? key}) : super(key: key);

  @override
  _SecondSideEffectHistoryScreenState createState() =>
      _SecondSideEffectHistoryScreenState();
}

class _SecondSideEffectHistoryScreenState
    extends State<SecondSideEffectHistoryScreen> {
  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');

  final List<ChartData> chartData = [
    ChartData('David', 25, Color.fromRGBO(9, 0, 136, 1)),
    ChartData('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
    ChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
    ChartData('Others', 52, Color.fromRGBO(255, 189, 57, 1))
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
          title: Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: Image(image: logoImage, width: 50, height: 50),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 160.0, left: 20.0),
            child: Container(
              height: 50,
              child: Text(
                'Side Effects History',
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
                    SfCircularChart(
                        annotations: <CircularChartAnnotation>[
                          CircularChartAnnotation(
                              widget: Container(
                                  child: PhysicalModel(
                                      child: Container(),
                                      shape: BoxShape.circle,
                                      elevation: 10,
                                      shadowColor: Colors.black,
                                      color:
                                      const Color.fromRGBO(230, 230, 230, 1)))),
                          CircularChartAnnotation(
                              widget: Container(
                                  child: Column(
                                    children: [
                                      Text('4',
                                          style:
                                          TextStyle(color: Colors.white, fontSize: 30)),
                                      Text('Total side effects',
                                          style:
                                          TextStyle(color: Colors.white, fontSize: 18)),
                                    ],
                                  )))
                        ], series: <CircularSeries>[
                      DoughnutSeries<ChartData, String>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          // Radius of doughnut
                          innerRadius: '80%',
                          radius: '120%')
                    ])),
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
                                backgroundColor: Colors.orange,
                                radius: 8,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('BodyAche',
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
                                backgroundColor: Colors.blue,
                                radius: 8,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Fever',
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
                                backgroundColor: Colors.yellow,
                                radius: 8,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Joint Pain',
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
                Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      // color: Colors.transparent,
                        color: Color(0xff3a2f4b),
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: SfCartesianChart(
                        series: <ChartSeries>[
                          // Renders bar chart
                          ColumnSeries<ChartDataBar, int>(
                              dataSource: chartDataBar,
                              xValueMapper: (ChartDataBar data, _) => data.x,
                              yValueMapper: (ChartDataBar data, _) => data.y
                          )
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
