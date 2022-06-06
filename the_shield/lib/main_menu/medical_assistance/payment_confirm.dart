import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:the_shield/main_menu/appointments/my_appointments.dart';

class PaymentConfirmationScreen extends StatefulWidget {
  const PaymentConfirmationScreen({Key? key}) : super(key: key);

  @override
  _PaymentConfirmationScreenState createState() =>
      _PaymentConfirmationScreenState();
}

class _PaymentConfirmationScreenState extends State<PaymentConfirmationScreen> {
  final AssetImage logoImage =
      const AssetImage('assets/images/shield_logo.png');
  final AssetImage assetImage =
      const AssetImage('assets/images/visa-us-vector-logo.png');
  String message = 'Message';
  String reason = 'Reason of the visit';
  List<dynamic> cardList = [
    {"title": "**** **** **** 4423", "sub": 'Jhon Doe', "color" : 0xffd8785a},
    {"title": "**** **** **** 4423", "sub": 'Jhon Doe', "color" : 0xff4845ff},
    {"title": "**** **** **** 4423", "sub": 'Jhon Doe', "color" : 0xff45ff89},
  ];

  @override
  void initState() {
    super.initState();
  }

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
              // child: Text(
              //   'Vaccine Compatibility',
              //   style: TextStyle(color: Colors.black, fontSize: 20),
              // ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Lalith Rajapaksha ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'confirmation',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  // margin: const EdgeInsets.all(5.0),
                  // padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Thu, 09 Apr ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          '08:00',
                          style: TextStyle(color: Colors.green, fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_outlined),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MOH',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Kurunegala 3Km',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
                  child: Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Container(
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      autofocus: false,
                      autocorrect: false,
                      keyboardType: TextInputType.visiblePassword,
                      // validator: (value) => value.isEmpty?'Please enter email':null,
                      onSaved: (value) => message = value!,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: message,
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      autofocus: false,
                      autocorrect: false,
                      keyboardType: TextInputType.visiblePassword,
                      // validator: (value) => value.isEmpty?'Please enter email':null,
                      onSaved: (value) => reason = value!,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: reason,
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Check+Scaling',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rs 1200',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Select the card',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 220,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: cardList.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 12,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          width: 350,
                          height: 200,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Card(
                            color: Color(cardList[index]['color']),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            border: Border.all(color: Colors.white),
                                            borderRadius: BorderRadius.all(Radius.circular(15))),
                                        child: Icon(
                                          Icons.done,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Image(
                                        image: assetImage,
                                        width: 80,
                                        height: 50,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    cardList[index]['title'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFFffffff),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    cardList[index]['sub'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFFffffff),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      'Manage cards',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.black,)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentConfirmedScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        'Pay now',
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
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }

  Widget creditCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          reverse: true,
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            // AssetImage assetImage = AssetImage('assets/images/visa-us-vector-logo.png');
            AssetImage assetImage = AssetImage('assets/images/shield_logo.png');

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 200,
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Card(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.blue,
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                            ),
                          ),
                          Image(
                            image: assetImage,
                            width: 80,
                            height: 50,
                          )
                        ],
                      ),
                      Text(
                        '**** **** **** 4423',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFffffff),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                      Text(
                        '**** **** **** 4423',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFffffff),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PaymentConfirmedScreen extends StatefulWidget {
  const PaymentConfirmedScreen({Key? key}) : super(key: key);

  @override
  _PaymentConfirmedScreenState createState() => _PaymentConfirmedScreenState();
}

class _PaymentConfirmedScreenState extends State<PaymentConfirmedScreen> {
  final AssetImage logoImage =
      const AssetImage('assets/images/shield_logo.png');
  final AssetImage assetImage =
      const AssetImage('assets/images/shield_logo.png');

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
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                        )),
                    Text(
                      'Appointment Confirmed',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  // margin: const EdgeInsets.all(5.0),
                  // padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Thu, 09 Apr ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          '08:00',
                          style: TextStyle(color: Colors.green, fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Dr. Lalith Rajapaksha - ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    Text(
                      'Cardiologist',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_outlined),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MOH',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Kurunegala 3Km',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
                  child: Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(child: Image(image: logoImage, width: 200, height: 200)),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyAppointmentsScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        'Add to calender',
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '2 days 3 hours',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'before the appointment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
