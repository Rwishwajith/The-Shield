import 'package:flutter/material.dart';

import 'identifyFactors.dart';

class SimpleHomeRemediesScreen extends StatefulWidget {
  const SimpleHomeRemediesScreen({Key? key}) : super(key: key);


  @override
  _SimpleHomeRemediesScreenState createState() =>
      _SimpleHomeRemediesScreenState();
}

class _SimpleHomeRemediesScreenState extends State<SimpleHomeRemediesScreen> {


  DateTime selectedDate = DateTime.now();
  String dateNow = '';
  final AssetImage logoImage = const AssetImage('assets/images/shield_logo.png');
  final AssetImage headAcheImage = const AssetImage('assets/images/headacheLarge.png');
  String _diseases = 'Select';
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
                'Simple Home Remedies',
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
                    'Select Side Effects',
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
                        'Vaccination date',
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
                          Icon(Icons.calendar_today_rounded),
                            Text(
                              dateNow,
                              style: TextStyle(color: Colors.white, fontSize: 15),
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
                        'Duration    ',
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
                height: 20,
              ),
              if(_durationSelected) Container(
                margin: const EdgeInsets.only(left: 55.0, right: 55.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomLeft: Radius.circular(30)),),
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
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Drink water.\nTake some Magnesium.\nLimit Alcohol\nGet Adequate sleep\nAvoid foods high in histamine\nUse essentialOils\nTry a B-Complex vitamins\n'
                              'Soothe pain with a cold\nCompress',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              if(_durationSelected) Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => IdentifyFactorsScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 180,
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(color: Colors.purple),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))),
                    child: Row(
                      children: [
                        Text(
                          'Identify Factors',
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
        )
    );
  }
}
