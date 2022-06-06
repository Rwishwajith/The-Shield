import 'package:flutter/material.dart';

import 'factor_affection.dart';

class IdentifyFactorsScreen extends StatefulWidget {
  const IdentifyFactorsScreen({Key? key}) : super(key: key);

  @override
  _IdentifyFactorsScreenState createState() =>
      _IdentifyFactorsScreenState();
}

class _IdentifyFactorsScreenState extends State<IdentifyFactorsScreen> {

  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');
  String _vaccine = 'Select';
  bool _vaccineSelected = false;
  bool fourHours = false;
  bool sixHours = false;
  bool eightHours = false;
  bool tenHours = false;
  bool checkNow = false;

  var items = [
    'Select',
    'Sinopharm',
    'pfyser',
  ];
  DateTime selectedDate = DateTime.now();


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
                'Factors Identification',
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
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                    color: Color(0x0ff3a2f4b),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
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
                      DropdownButton(
                        value: _vaccine,
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
                            _vaccine = newValue!;
                            _vaccineSelected = true;
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
                height: 20,
              ),
              if(_vaccineSelected)Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Color(0x0ff3a2f4b),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text(
                      'How many hours you work per day?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        if(!sixHours)GestureDetector(
                          onTap: () {
                            setState(() {
                              fourHours = true;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              '4 Hours',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        if(!fourHours)GestureDetector(
                          onTap: () {
                            setState(() {
                              sixHours = true;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              '6 Hours',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if(fourHours || sixHours)Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Color(0x0ff3a2f4b),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text(
                      'How many hours you work per day?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        if(!tenHours)GestureDetector(
                          onTap: () {
                            setState(() {
                              eightHours = true;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              '8 Hours',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        if(!eightHours)GestureDetector(
                          onTap: () {
                            setState(() {
                              tenHours = true;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              '10 Hours',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if(eightHours || tenHours)GestureDetector(
                onTap: () {
                  setState(() {
                    checkNow = true;
                  });
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Color(0x0ff3a2f4b),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    children: [
                      Text(
                        'If you have a smart watch,check your stress level',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'Check now',
                        style: TextStyle(color: Colors.yellowAccent, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              if(checkNow)Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Text(
                    'Stress level recorded as High',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              if(checkNow)Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => FactorAffectionScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 120,
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(color: Colors.purple),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward, color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )
    );
  }
}
