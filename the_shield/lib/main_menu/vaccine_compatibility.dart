import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_shield/home_screen.dart';
import 'package:the_shield/main_menu/utility/utils.dart';

import 'medical_assistance/medical_assistance.dart';

class VaccineCompatibility extends StatefulWidget {
  const VaccineCompatibility({Key? key}) : super(key: key);

  @override
  _VaccineCompatibilityState createState() => _VaccineCompatibilityState();
}

class _VaccineCompatibilityState extends State<VaccineCompatibility> {
  bool vaccineSino = false;
  bool vaccineAstra = false;
  bool vaccinePfiz = false;
  bool dose1 = false;
  bool dose2 = false;
  bool dose3 = false;
  bool checkCompatibility = false;
  bool afterCheck = false;
  final formKey = GlobalKey<FormState>();
  String _age = "Age";
  String _gender = 'Male';
  String _diseases = 'Headache';
  var items = [
    'Male',
    'Female',
  ];

  var items2 = [
    'Headache',
    'Cancer',
    'Diabetes',
    'Cholestrol',
    'Pressure',
    'Migrane',
    'Other',

  ];

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
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Image(image: logoImage, width: 50, height: 50),
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 160.0, left: 20.0),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                        'Select the vaccine',
                        style: TextStyle(color: Colors.black, fontSize: 15),
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
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('vaccineSino', true);
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
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('vaccineAstra', true);
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
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('vaccinePfiz', true);
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
                        'Vaccine Dose',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RawChip(
                              label: const Text(
                                '1st dose',
                                style: TextStyle(color: Color(0xffcbc5f9)),
                              ),
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('dose1', true);
                                setState(() {
                                  dose1 = true;
                                  dose2 = false;
                                  dose3 = false;
                                });
                              },
                              elevation: 1.0,
                              shadowColor: Colors.blueGrey,
                              selected: dose1,
                              backgroundColor: Colors.white,
                              selectedColor: Colors.black26,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawChip(
                              label: const Text(
                                '2nd dose',
                                style: TextStyle(color: Color(0xffcbc5f9)),
                              ),
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('dose2', true);
                                setState(() {
                                  dose1 = false;
                                  dose2 = true;
                                  dose3 = false;
                                });
                              },
                              elevation: 1.0,
                              shadowColor: Colors.blueGrey,
                              selected: dose2,
                              backgroundColor: Colors.white,
                              selectedColor: Colors.black26,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawChip(
                              label: const Text(
                                '3rd dose',
                                style: TextStyle(color: Color(0xffcbc5f9)),
                              ),
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('dose3', true);
                                setState(() {
                                  dose1 = false;
                                  dose2 = false;
                                  dose3 = true;
                                });
                              },
                              elevation: 1.0,
                              shadowColor: Colors.blueGrey,
                              selected: dose3,
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
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          // height: 60,
                          child: Container(
                            height: 60,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: TextFormField(
                                style: TextStyle(color: Colors.black),
                                autofocus: false,
                                autocorrect: false,
                                keyboardType: TextInputType.visiblePassword,
                                // validator: (value) => value.isEmpty?'Please enter email':null,
                                onSaved: (value) async {
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setString('age', value!);
                                  _age = value;
                                },
                                onChanged: (value) async {
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setString('age', value);
                                  _age = value;
                                },
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    labelText: _age,
                                    labelStyle: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          // height: 60,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: DropdownButton(
                                  value: _gender,
                                  style: TextStyle(color: Colors.black),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) async {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    prefs.setString('gender', newValue!);
                                    setState(() {
                                      _gender = newValue;
                                    });
                                  },
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 55.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black26,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                        child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: DropdownButton(
                              isExpanded: true,
                              alignment: AlignmentDirectional.center,
                              value: _diseases,
                              style: TextStyle(color: Colors.black),
                              items: items2.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString('diseases', newValue!);
                                setState(() {
                                  _diseases = newValue;
                                });
                              },
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 55.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    checkCompatibility = true;
                    afterCheck = false;
                    Timer(const Duration(seconds: 2), () async {
                      setState(() {
                        checkCompatibility = false;
                        afterCheck = true;
                      });
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    'Check Vaccine Compatibility',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              if (checkCompatibility)
                Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.purple),
                  ),
                ),
              if (afterCheck)
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Based on the given data, SInopharm BIBP vaccine is',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        '70% compatible with your body conditions',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 15.0,
                        animation: true,
                        percent: 0.7,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "70%",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0,
                                  color: Colors.pinkAccent),
                            ),
                          ],
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        linearGradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.pinkAccent,
                        ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PossibleSideEffectsScreen(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              border: Border.all(color: Colors.black54),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Text(
                            'See the possible side effects',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class PossibleSideEffectsScreen extends StatefulWidget {
  const PossibleSideEffectsScreen({Key? key}) : super(key: key);

  @override
  _PossibleSideEffectsScreenState createState() =>
      _PossibleSideEffectsScreenState();
}

class _PossibleSideEffectsScreenState extends State<PossibleSideEffectsScreen> {
  bool vaccineSino = false;
  bool vaccineAstra = false;
  bool vaccinePfiz = false;
  String vaccine = '';
  bool dose1 = false;
  bool dose2 = false;
  bool dose3 = false;
  String dose = '';
  String age = '';
  String gender = '';
  String diseases = '';

  setData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      vaccineSino = prefs.getBool('vaccineSino')!;
      vaccineAstra = prefs.getBool('vaccineAstra')!;
      vaccinePfiz = prefs.getBool('vaccinePfiz')!;
      dose1 = prefs.getBool('dose1')!;
      dose2 = prefs.getBool('dose2')!;
      dose3 = prefs.getBool('dose3')!;
      age = prefs.getString('age')!;
      gender = prefs.getString('gender')!;
      diseases = prefs.getString('diseases')!;

      setState(() {
        if (vaccineSino) {
          vaccine = 'Sinopharm';
        } else if (vaccineAstra) {
          vaccine = 'AstraZeneca';
        } else if (vaccinePfiz) {
          vaccine = 'pfizer';
        }

        if (dose1) {
          dose = '1st dose';
        } else if (dose2) {
          dose = '2nd dose';
        } else if (dose3) {
          dose = '3rd dose';
        }
      });

      print(prefs.getString('age'));
      print(prefs.getString('diseases'));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    final AssetImage logoImage =
        const AssetImage('assets/images/shield_logo.png');
    final AssetImage backPain = const AssetImage('assets/images/Backpain.png');
    final AssetImage headache = const AssetImage('assets/images/Headache.png');
    final AssetImage shortness =
        const AssetImage('assets/images/Shortnessofbreath.jpg');
    final AssetImage highBlood =
        const AssetImage('assets/images/Highbloodsugar.png');
    final AssetImage musclePain =
        const AssetImage('assets/images/MuslePain.png');
    final AssetImage fever = const AssetImage('assets/images/Fever.png');
    final AssetImage bodyAche = const AssetImage('assets/images/JointPain.png');
    final AssetImage allergies = const AssetImage('assets/images/allegies.png');

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
                'Possible Side Effects',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawChip(
                            label: Text(
                              vaccine,
                              style: TextStyle(color: Colors.black87),
                            ),
                            onPressed: () {},
                            elevation: 1.0,
                            shadowColor: Colors.blueGrey,
                            backgroundColor: Colors.white,
                            selectedColor: Colors.black26,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawChip(
                            label: Text(
                              dose,
                              style: TextStyle(color: Colors.black87),
                            ),
                            onPressed: () {},
                            elevation: 1.0,
                            shadowColor: Colors.blueGrey,
                            backgroundColor: Colors.white,
                            selectedColor: Colors.black26,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawChip(
                            label: const Text(
                              'Diabetes',
                              style: TextStyle(color: Colors.black87),
                            ),
                            onPressed: () {},
                            elevation: 1.0,
                            shadowColor: Colors.blueGrey,
                            backgroundColor: Colors.white,
                            selectedColor: Colors.black26,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawChip(
                            label: Text(
                              age + ' years',
                              style: TextStyle(color: Colors.black87),
                            ),
                            onPressed: () {},
                            elevation: 1.0,
                            shadowColor: Colors.blueGrey,
                            backgroundColor: Colors.white,
                            selectedColor: Colors.black26,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawChip(
                            label: Text(
                              gender,
                              style: TextStyle(color: Colors.black87),
                            ),
                            onPressed: () {},
                            elevation: 1.0,
                            shadowColor: Colors.blueGrey,
                            backgroundColor: Colors.white,
                            selectedColor: Colors.black26,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawChip(
                            label: Text(
                              diseases,
                              style: TextStyle(color: Colors.black87),
                            ),
                            onPressed: () {},
                            elevation: 1.0,
                            shadowColor: Colors.blueGrey,
                            backgroundColor: Colors.white,
                            selectedColor: Colors.black26,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawChip(
                            label: const Text(
                              '70% Vaccine Compatibility',
                              style: TextStyle(color: Colors.black87),
                            ),
                            onPressed: () {},
                            elevation: 1.0,
                            shadowColor: Colors.blueGrey,
                            backgroundColor: Colors.white,
                            selectedColor: Colors.black26,
                          ),
                        ],
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
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    Text(
                      'Based on your body conditions you might experience low medium serverity side effect',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 15.0, left: 15.0, right: 15.0, bottom: 5.0),
                padding: const EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff96ff3b), Color(0xffd96d00)]),
                    color: Colors.white,
                    // border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: backPain,
                            ),
                            Text(
                              'Back Pain',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: musclePain,
                            ),
                            Text(
                              'Muscle Pain',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: headache,
                            ),
                            Text(
                              'Headache',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: fever,
                            ),
                            Text(
                              'Fever',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: shortness,
                            ),
                            Text(
                              'Shortness of breath',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: bodyAche,
                            ),
                            Text(
                              'Body Ache',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: highBlood,
                            ),
                            Text(
                              'High blood sugar',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: allergies,
                            ),
                            Text(
                              'Allergies',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.only(bottom: 5.0, left: 15.0, right: 15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff96ff3b), Color(0xffd96d00)]),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Low severity',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                    ),
                    Text(
                      'Medium severity',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Precaustion can be taken',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    bottom: 5.0, left: 15.0, right: 15.0, top: 15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Drink penadol 3 times',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                            Text(
                              'with 6 hour period',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Rest well and',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                            Text(
                              'seek medical',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                            Text(
                              'assistance',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Take allergy',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                            Text(
                              'medicine',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Seek medical',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                            Text(
                              'assistance immediately',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: fever,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: headache,
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            backgroundImage: shortness,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            backgroundImage: allergies,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            backgroundImage: highBlood,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: musclePain,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              backgroundImage: bodyAche,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          backgroundImage: backPain,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SideEffectPrecautionsScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 5.0, left: 5.0, right: 5.0, top: 15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.health_and_safety,
                              color: Colors.black,
                            ),
                            backgroundColor: Colors.green,
                          ),
                          Text(
                            'More precaution steps',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MedicalAssistanceScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 5.0, left: 5.0, right: 5.0, top: 15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.medical_services_outlined,
                              color: Colors.black,
                            ),
                            backgroundColor: Colors.green,
                          ),
                          Text(
                            'Get medical assistance',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}

class SideEffectPrecautionsScreen extends StatefulWidget {
  const SideEffectPrecautionsScreen({Key? key}) : super(key: key);

  @override
  _SideEffectPrecautionsScreenState createState() =>
      _SideEffectPrecautionsScreenState();
}

class _SideEffectPrecautionsScreenState
    extends State<SideEffectPrecautionsScreen> {
  @override
  Widget build(BuildContext context) {
    final AssetImage logoImage =
        const AssetImage('assets/images/shield_logo.png');
    final AssetImage backPain = const AssetImage('assets/images/Backpain.png');
    final AssetImage headache = const AssetImage('assets/images/Headache.png');
    final AssetImage shortness =
        const AssetImage('assets/images/Shortnessofbreath.jpg');
    final AssetImage highBlood =
        const AssetImage('assets/images/Highbloodsugar.png');
    final AssetImage musclePain =
        const AssetImage('assets/images/MuslePain.png');
    final AssetImage fever = const AssetImage('assets/images/Fever.png');
    final AssetImage bodyAche = const AssetImage('assets/images/JointPain.png');
    final AssetImage allergies = const AssetImage('assets/images/allegies.png');

    final AssetImage dayoff = const AssetImage('assets/images/day-off-.jpg');
    final AssetImage drinkWater =
        const AssetImage('assets/images/Drinkwater.png');
    final AssetImage penadol = const AssetImage('assets/images/Penadol.jpeg');
    final AssetImage wearCloths =
        const AssetImage('assets/images/Warelightcloths.png');

    bool feverSelected = false;
    bool backSelected = true;

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
              'SIDE EFFECT PRECAUTIONS',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'PLEASE SELECT THE POSSIBLE SIDE EFFECT TO SEE THE PRECAUTIONS',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if(feverSelected) {
                      backSelected = true;
                      feverSelected = false;
                    }

                    if(backSelected) {
                      backSelected = false;
                      feverSelected = true;
                    }
                  });
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                      top: 15.0, left: 15.0, right: 15.0, bottom: 5.0),
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: backSelected? Colors.purple : Colors.transparent,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.purple,
                                    backgroundImage: backPain,
                                  ),
                                ),
                              ),
                              Text(
                                'Back Pain',
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: musclePain,
                              ),
                              Text(
                                'Muscle Pain',
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: headache,
                              ),
                              Text(
                                'Headache',
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: feverSelected? Colors.purple : Colors.transparent,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.purple,
                                    backgroundImage: fever,
                                  ),
                                ),
                              ),
                              Text(
                                'Fever',
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: shortness,
                              ),
                              Text(
                                'Shortness of breath',
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: bodyAche,
                              ),
                              Text(
                                'Body Ache',
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: highBlood,
                              ),
                              Text(
                                'High blood sugar',
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 11),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: allergies,
                              ),
                              Text(
                                'Allergies',
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 15.0, left: 15.0, right: 15.0, bottom: 5.0),
                padding: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                    color: Color(0xff27193c),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fever?',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Fever is a normal sign that the body is building protection.Fever is consider as low severity side effects. But please contact medical assistance if it get worse and last more than 48 hours.',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 155,
                          height: 70,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            children: [
                              Image(
                                image: dayoff,
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                'Take a day off\nandget ready\no rest',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 70,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            children: [
                              Image(
                                image: drinkWater,
                                width: 40,
                                height: 40,
                              ),
                              Text(
                                'Drink penty of\nluids to reduce\nthe dehydration',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 155,
                          height: 70,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            children: [
                              Image(
                                image: penadol,
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                'Penadol will help\nto reduce fever',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 70,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            children: [
                              Image(
                                image: wearCloths,
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                'Wear light\nweight cloths',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 5.0, left: 5.0, right: 5.0, top: 15.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          border: Border.all(color: Colors.purple),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        'Go to WHO website to see more precautions',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MedicalAssistanceScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      bottom: 5.0, left: 15.0, right: 15.0, top: 15.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    'Get medical help',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
