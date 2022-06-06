import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../medical_assistance/medical_assistance.dart';
import '../side_effect_monitoring/log_side_effects.dart';

class CheckPredictionsScreen extends StatefulWidget {
  const CheckPredictionsScreen({Key? key}) : super(key: key);

  @override
  _CheckPredictionsScreenState createState() => _CheckPredictionsScreenState();
}

class _CheckPredictionsScreenState extends State<CheckPredictionsScreen> {
  final AssetImage logoImage =
      const AssetImage('assets/images/shield_logo.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff27193c),
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
                'Check Predictions',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.emoji_people,
                      size: 40,
                    ),
                    Flexible(
                      child: Text(
                        'Future Complication based on your body conditions',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Future Complication based on your body conditions',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Future Complication based on your body conditions',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Future Complication based on your body conditions',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        'Privacy',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Future Complication based on your body conditions',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FutureComplicationScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                        color: Color(0xff8460b4),
                        border: Border.all(color: Color(0xff8460b4)),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Center(
                      child: Text(
                        'CONTINUE AND AGREE',
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

class FutureComplicationScreen extends StatefulWidget {
  const FutureComplicationScreen({Key? key}) : super(key: key);

  @override
  _FutureComplicationScreenState createState() =>
      _FutureComplicationScreenState();
}

class _FutureComplicationScreenState extends State<FutureComplicationScreen> {
  @override
  Widget build(BuildContext context) {
    final AssetImage logoImage =
        const AssetImage('assets/images/shield_logo.png');

    List<dynamic> sideEffectListHistory1 = [
      {
        "title": "Possible heart attack",
        "sub":
            'Take a look into our predictions and look closer to the sections highlighted in Red.'
      },
      {
        "title": "Diabates wanings",
        "sub":
            'Take a look into our predictions and look closer to the sections highlighted in Red.'
      },
      {
        "title": "Diabates wanings",
        "sub":
            'Take a look into our predictions and look closer to the sections highlighted in Red.'
      },
    ];

    List<dynamic> sideEffectListHistory2 = [
      {
        "title": "Possible chronic joint pain",
        "sub":
            'Take a look into our predictions and look closer to the sections highlighted in Red.'
      },
      {
        "title": "High fever",
        "sub":
            'Take a look into our predictions and look closer to the sections highlighted in Red.'
      },
      {
        "title": "00",
        "sub":
            'Take a look into our predictions and look closer to the sections highlighted in Red.'
      },
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
          title: Image(image: logoImage, width: 50, height: 50),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 130.0, left: 20.0),
            child: Container(
              height: 50,
              child: Text(
                'Future Predictions',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
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
                        'SEVERE',
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
                        'MEDIUM',
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
                        'MILD',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: sideEffectListHistory1.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 12,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: 170,
                        height: 200,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.red, Colors.orange]),
                            // color: Color(0xff3a2f4b),
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              sideEffectListHistory1[index]['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              sideEffectListHistory1[index]['sub'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.only(
                                  top: 5.0,
                                  bottom: 5.0,
                                  left: 15.0,
                                  right: 15.0),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  border: Border.all(color: Colors.purple),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                'View',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Recent',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: sideEffectListHistory2.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 12,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: 170,
                        height: 220,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.red, Colors.orange]),
                            // color: Color(0xff3a2f4b),
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              sideEffectListHistory2[index]['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              sideEffectListHistory2[index]['sub'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => SecondFutureComplicationScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 5.0,
                                    left: 20.0,
                                    right: 20.0),
                                decoration: BoxDecoration(
                                    color: Colors.purple,
                                    border: Border.all(color: Colors.purple),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  'View',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class SecondFutureComplicationScreen extends StatefulWidget {
  const SecondFutureComplicationScreen({Key? key}) : super(key: key);

  @override
  _SecondFutureComplicationScreenState createState() =>
      _SecondFutureComplicationScreenState();
}

class _SecondFutureComplicationScreenState
    extends State<SecondFutureComplicationScreen> {

  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');

  final List<ChartData> chartData1 = [
    ChartData(2010, 35),
    ChartData(2011, 28),
    ChartData(2012, 34),
    ChartData(2013, 32),
    ChartData(2014, 40)
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
              'Future Predictions log',
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
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(color: Colors.purple),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      'Month',
                      style:
                      TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      '3 Months',
                      style:
                      TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      '6 Months',
                      style:
                      TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 400,
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Color(0xff3a2f4b),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: Color(0xff3a2f4b),
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              'Table',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              'Chart',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.purpleAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Headache',
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '15 min',
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
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
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.orange]),
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Text(
                      'DIABETES WARNING',
                      style:
                      TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'dfghjkmndfiohlgj dfgnjdfiog dfioughnodfiug dfiougnjdfogdfoiug difogndfognm dfoignodifgniofd ikfdgoif',
                      style:
                      TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => MedicalAssistanceScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        'GET MEDICAL ASSISTANCE',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFffffff),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor: MaterialStateProperty.all(Color(0xFF5251a34)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Color(0xFF5251a34))),
                      ),
                      minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
