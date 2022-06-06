import 'package:flutter/material.dart';

class AggregatingFactorsScreen extends StatefulWidget {
  const AggregatingFactorsScreen({Key? key}) : super(key: key);


  @override
  _AggregatingFactorsScreenState createState() =>
      _AggregatingFactorsScreenState();
}

class _AggregatingFactorsScreenState extends State<AggregatingFactorsScreen> {


  DateTime selectedDate = DateTime.now();
  final AssetImage logoImage = const AssetImage('assets/images/shield_logo.png');
  final AssetImage headAcheImage = const AssetImage('assets/images/stress1.jpeg');
  final AssetImage coldBeverages = const AssetImage('assets/images/coldBeverages1.jpeg');
  final AssetImage tyramineFood = const AssetImage('assets/images/TryamineFoods.png');
  final AssetImage alcohol = const AssetImage('assets/images/AlcoholandBeer.jpg');
  final AssetImage lackOfSleep = const AssetImage('assets/images/lackofsleep.jpg');
  String _diseases = 'Select';
  String _vaccine = 'Select';
  bool _vaccinationSelected = false;
  var items = [
    'Select',
    'Headache',
    'Headache2',
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
          title: Image(image: logoImage, width: 50, height: 50),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 130.0, left: 20.0),
            child: Container(
              height: 50,
              child: Text(
                'Factor Affecting The Side Effects',
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
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: coldBeverages,
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
                      child: Column(
                        children: [
                          Text(
                            'Cold Beverages',
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: tyramineFood,
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
                      child: Column(
                        children: [
                          Text(
                            'Tyramine Foods',
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: alcohol,
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
                      child: Column(
                        children: [
                          Text(
                            'Alcohol And Beer',
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: lackOfSleep,
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
                      child: Column(
                        children: [
                          Text(
                            'Lack of Sleep',
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
