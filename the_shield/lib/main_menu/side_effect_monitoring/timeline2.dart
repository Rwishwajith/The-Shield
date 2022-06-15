import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SecondSideEffectTimelineScreen extends StatefulWidget {
  const SecondSideEffectTimelineScreen({Key? key}) : super(key: key);

  @override
  _SecondSideEffectTimelineScreenState createState() =>
      _SecondSideEffectTimelineScreenState();
}

class _SecondSideEffectTimelineScreenState
    extends State<SecondSideEffectTimelineScreen> {
  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');


  final List<ChartData> chartData1 = [
    ChartData(02, 61),
    ChartData(03, 98),
    ChartData(04, 88),
    ChartData(05, 102),
    ChartData(06, 140)
  ];

  final List<ChartData> chartData2 = [
    ChartData(02, 76),
    ChartData(03, 66),
    ChartData(04, 76),
    ChartData(05, 43),
    ChartData(06, 78)
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
                'Side effect timeline',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Rest Heart Rate Average',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '110',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      Text(
                        'BPM',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'FEB 2022 - JUN 2022',
                    style: TextStyle(color: Colors.black, fontSize: 15),
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
                      color: Colors.purple,
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'D',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'W',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'M',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          'Y',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
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
                    SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <ChartSeries>[
                          // Renders line chart
                          LineSeries<ChartData, int>(
                              dataSource: chartData1,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y
                          )
                        ]
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Rest Heart Rate Average Last Year',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '61',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      Text(
                        'BPM',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'FEB 2021 - JUN 2021',
                    style: TextStyle(color: Colors.black, fontSize: 15),
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
                    child:
                    SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <ChartSeries>[
                          // Renders line chart
                          LineSeries<ChartData, int>(
                              dataSource: chartData2,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y
                          )
                        ]
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
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
