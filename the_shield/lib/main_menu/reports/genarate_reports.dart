import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class GenerateReportsScreen extends StatefulWidget {
  const GenerateReportsScreen({Key? key}) : super(key: key);

  @override
  _GenerateReportsScreenState createState() => _GenerateReportsScreenState();
}

class _GenerateReportsScreenState extends State<GenerateReportsScreen> {
  bool vaccineSino = false;
  bool vaccineAstra = false;
  bool vaccinePfiz = false;
  bool dose1 = false;
  bool dose2 = false;
  bool dose3 = false;
  bool generateSelected = false;
  bool generateSelectedAfter = false;
  final formKey = GlobalKey<FormState>();
  String _diseases = 'Headache';

  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  List<dynamic> generateList = [
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
  ];

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final AssetImage logoImage =
        const AssetImage('assets/images/shield_logo.png');

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
                'Vaccine Compatibility',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vaccine',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Select the vaccine you are getting',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RawChip(
                              label: const Text(
                                'Sinopharm BIBP',
                                style: TextStyle(color: Color(0xffcbc5f9)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vaccineSino = true;
                                  vaccinePfiz = false;
                                  vaccineAstra = false;
                                });
                              },
                              elevation: 1.0,
                              shadowColor: Colors.blueGrey,
                              selected: vaccineSino,
                              backgroundColor: Colors.white,
                              selectedColor: Colors.black26,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawChip(
                              label: const Text(
                                'AstraZeneca',
                                style: TextStyle(color: Color(0xffcbc5f9)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vaccineSino = false;
                                  vaccinePfiz = false;
                                  vaccineAstra = true;
                                });
                              },
                              elevation: 1.0,
                              shadowColor: Colors.blueGrey,
                              selected: vaccineAstra,
                              backgroundColor: Colors.white,
                              selectedColor: Colors.black26,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawChip(
                              label: const Text(
                                'Pfizer-BioNTech',
                                style: TextStyle(color: Color(0xffcbc5f9)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vaccineSino = false;
                                  vaccinePfiz = true;
                                  vaccineAstra = false;
                                });
                              },
                              elevation: 1.0,
                              shadowColor: Colors.blueGrey,
                              selected: vaccinePfiz,
                              backgroundColor: Colors.white,
                              selectedColor: Colors.black26,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: SfDateRangePicker(
                  startRangeSelectionColor: Color(0xffc189ad),
                  endRangeSelectionColor: Color(0xffc189ad),
                  rangeSelectionColor: Color(0xff8b5783),
                  headerStyle: DateRangePickerHeaderStyle(
                      textStyle:
                          TextStyle(fontSize: 30, color: Color(0xff8b5783))),
                  onSelectionChanged: _onSelectionChanged,
                  selectionMode: DateRangePickerSelectionMode.range,
                  initialSelectedRange: PickerDateRange(
                      DateTime.now().subtract(const Duration(days: 4)),
                      DateTime.now().add(const Duration(days: 1))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 170,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        generateSelected = true;
                        generateSelectedAfter = false;
                        Timer(const Duration(seconds: 2), () async {
                          setState(() {
                            generateSelected = false;
                            generateSelectedAfter = true;
                          });
                        });
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        'Generate Reports',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFffffff),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF5251a34)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Color(0xFF5251a34))),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(Size(double.infinity, 50)),
                    )),
              ),
              if (generateSelected)
                Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.purple),
                  ),
                ),
              if(generateSelectedAfter)Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reports',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          'Saved',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          'Others',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 15.0),
                    child: Divider(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  Container(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      reverse: false,
                      itemCount: generateList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                generateList[index]['title'],
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    generateList[index]['sub'],
                                    style:
                                    TextStyle(color: Colors.black, fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.download_rounded,
                                        color: Colors.blue,
                                        size: 15,
                                      ),
                                      Text(
                                        'Download',
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Divider(
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
