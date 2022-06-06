import 'package:flutter/material.dart';

import 'identifyFactors.dart';

class FactorAffectionScreen extends StatefulWidget {
  const FactorAffectionScreen({Key? key}) : super(key: key);


  @override
  _FactorAffectionScreenState createState() =>
      _FactorAffectionScreenState();
}

class _FactorAffectionScreenState extends State<FactorAffectionScreen> {


  DateTime selectedDate = DateTime.now();
  final AssetImage logoImage = const AssetImage('assets/images/shield_logo.png');
  final AssetImage headAcheImage = const AssetImage('assets/images/headache.png');
  String _diseases = 'Select';
  String _vaccine = 'Select';
  bool _vaccinationSelected = false;
  var items = [
    'Select',
    'Headache',
    'Fever',
    'Joint Pain',
    'High Blood Pressure',
    'High Sugar',
    'Heart Attack',
  ];

  var items2 = [
    'Select',
    '1 Day',
    '3 Days',
    '1 Week',
    'More Than a Week',
    'More Than a Month',
  ];

  List<dynamic> sideEffects = [
    {"title": "Stress", "image": 'assets/images/Stress.png'},
    {"title": "Poor Sleep", "image": 'assets/images/poorSleep1.jpeg'},
    {"title": "Tired", "image": 'assets/images/tired1.jpeg'},
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
                'Factor for the Side Effects Severity',
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
                        'Side Effects',
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
                            _vaccinationSelected = true;
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
                padding: const EdgeInsets.all(10.0),
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
                        'Vaccine',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'Sinopharm',
                            style: TextStyle(color: Colors.white, fontSize: 15),
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
                height: 20,
              ),
              if(_vaccinationSelected) Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomLeft: Radius.circular(100)),),
                child: Column(
                  children: [
                    Image(image: headAcheImage, width: 250, height: 200,),
                    Text(
                      _diseases,
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  SizedBox(
                        height: 220,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: sideEffects.length,
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
                                  image: DecorationImage(
                                      image: AssetImage(sideEffects[index]['image']),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: Text(
                                  sideEffects[index]['title'],
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //     builder: (context) => IdentifyFactorsScreen(),
                          //   ),
                          // );
                        },
                        child: Container(
                          width: 130,
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
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        )
    );
  }
}
