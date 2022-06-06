import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../vaccine_compatibility.dart';

class LogSideEffectsScreen extends StatefulWidget {
  const LogSideEffectsScreen({Key? key}) : super(key: key);

  @override
  _LogSideEffectsScreenState createState() => _LogSideEffectsScreenState();
}

class _LogSideEffectsScreenState extends State<LogSideEffectsScreen> {

  DateTime selectedDate = DateTime.now();
  String dateNow = '';
  String dateNow2 = '';
  String _diseases = 'Select';
  String _vaccine = 'Select';
  String _dosage = 'Select';
  String _duration = 'Select';
  bool _durationSelected = false;

  var items = [
    'Select',
    'Headache',
    'Headache2',
  ];

  var items2 = [
    'Select',
    '1 Day',
    '2 Days',
    '3 Days',
    '4 Days',
  ];

  var items3 = [
    'Select',
    'Sinopharm',
  ];

  var items4 = [
    'Select',
    '1st dose',
    '2nd dose',
  ];


  @override
  Widget build(BuildContext context) {

    _selectDate(BuildContext context) async {
      final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950),
        lastDate: DateTime(2030),
      );
      if (selected != null && selected != selectedDate)
        setState(() {
          selectedDate = selected;
          dateNow =
          '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
        });
    }

    _selectDate2(BuildContext context) async {
      final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950),
        lastDate: DateTime(2030),
      );
      if (selected != null && selected != selectedDate)
        setState(() {
          selectedDate = selected;
          dateNow2 =
          '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
        });
    }

    final AssetImage logoImage =
        const AssetImage('assets/images/shield_logo.png');

    final List<ChartData> chartData1 = [
      ChartData(2010, 35),
      ChartData(2011, 28),
      ChartData(2012, 34),
      ChartData(2013, 32),
      ChartData(2014, 40)
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
                'Log Side Effects',
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
                          'SELECT THE DATe',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                              Text(
                                dateNow,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
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
                          'VACCINATION DATE',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            _selectDate2(context);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                              Text(
                                dateNow2,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
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
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Color(0x0ff3a2f4b),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'VACCINE',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        DropdownButton(
                          value: _vaccine,
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          style: TextStyle(color: Colors.white),
                          items: items3.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _vaccine = newValue!;
                            });
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 55.0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.red.shade900,
                            ),
                          ),
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
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Color(0x0ff3a2f4b),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'VACCINE DOSE',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        DropdownButton(
                          value: _dosage,
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          style: TextStyle(color: Colors.white),
                          items: items4.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _dosage = newValue!;
                            });
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 55.0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.red.shade900,
                            ),
                          ),
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
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Color(0x0ff3a2f4b),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'SELECT SIDE EFFECT',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        DropdownButton(
                          value: _diseases,
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          style: TextStyle(color: Colors.white),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _diseases = newValue!;
                            });
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 55.0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.red.shade900,
                            ),
                          ),
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
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Color(0x0ff3a2f4b),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'DURATION',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        DropdownButton(
                          value: _duration,
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          style: TextStyle(color: Colors.white),
                          items: items2.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _duration = newValue!;
                              _durationSelected = true;
                            });
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 55.0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.red.shade900,
                            ),
                          ),
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
                if(_durationSelected) Row(
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
                        'Today',
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
                        'Week',
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
                        'Month',
                        style:
                        TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                if(_durationSelected) Container(
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
                )
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