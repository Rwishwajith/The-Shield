import 'package:flutter/material.dart';

class PredictionHistoryScreen extends StatefulWidget {
  const PredictionHistoryScreen({Key? key}) : super(key: key);

  @override
  _PredictionHistoryScreenState createState() => _PredictionHistoryScreenState();
}

class _PredictionHistoryScreenState extends State<PredictionHistoryScreen> {

  DateTime selectedDate = DateTime.now();
  String dateNow = '';
  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');

  List<dynamic> sideEffectListHistory1 = [
    {"title": "Possible heart attack", "sub": 'Take a look into our predictions and look closer to the sections highlighted in Red.'},
    {"title": "Diabates wanings", "sub": 'Take a look into our predictions and look closer to the sections highlighted in Red.'},
    {"title": "Diabates wanings", "sub": 'Take a look into our predictions and look closer to the sections highlighted in Red.'},
  ];

  List<dynamic> sideEffectListHistory2 = [
    {"title": "Possible chronic joint pain", "sub": 'Take a look into our predictions and look closer to the sections highlighted in Red.'},
    {"title": "High fever", "sub": 'Take a look into our predictions and look closer to the sections highlighted in Red.'},
    {"title": "00", "sub": 'Take a look into our predictions and look closer to the sections highlighted in Red.'},
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
                'Future complication history',
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
                        'This Weeek',
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
                        'This Month',
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
                        'This Year',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: sideEffectListHistory1.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 12,);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: 170,
                        height: 220,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.red,
                                  Colors.orange
                                ]
                            ),
                            // color: Color(0xff3a2f4b),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              sideEffectListHistory1[index]['title'],
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              sideEffectListHistory1[index]['sub'],
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  border: Border.all(color: Colors.purple),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                'View',
                                style: TextStyle(color: Colors.white, fontSize: 15),
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
                    itemCount: sideEffectListHistory1.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 12,);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: 170,
                        height: 220,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.red,
                                  Colors.orange
                                ]
                            ),
                            // color: Color(0xff3a2f4b),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              sideEffectListHistory1[index]['title'],
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              sideEffectListHistory1[index]['sub'],
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  border: Border.all(color: Colors.purple),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                'View',
                                style: TextStyle(color: Colors.white, fontSize: 15),
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
