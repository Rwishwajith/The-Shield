import 'package:flutter/material.dart';

import '../../home_screen.dart';
import '../medical_assistance/book_appointment.dart';

class MyAppointmentsScreen extends StatefulWidget {
  const MyAppointmentsScreen({Key? key}) : super(key: key);

  @override
  _MyAppointmentsScreenState createState() => _MyAppointmentsScreenState();
}

class _MyAppointmentsScreenState extends State<MyAppointmentsScreen> {
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
              child: Text(
                'My Appointments',
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
                  height: 60,
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      autofocus: false,
                      autocorrect: false,
                      keyboardType: TextInputType.visiblePassword,
                      // validator: (value) => value.isEmpty?'Please enter email':null,
                      // onSaved: (value) => doctor = value!,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search,color: Colors.black,),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: 'Search',
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Past',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '09/04/2022',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Cardiologist - Lalith Rajapaksha',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Icon(Icons.info_outline, color: Colors.blue, size: 15,)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.edit, color: Colors.blue, size: 15,),
                              Text(
                                'Modify',
                                style: TextStyle(color: Colors.blue, fontSize: 15),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '09/04/2022',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Cardiologist - Lalith Rajapaksha',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Icon(Icons.info_outline, color: Colors.blue, size: 15,)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.edit, color: Colors.blue, size: 15,),
                              Text(
                                'Modify',
                                style: TextStyle(color: Colors.blue, fontSize: 15),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '09/04/2022',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Cardiologist - Lalith Rajapaksha',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Icon(Icons.info_outline, color: Colors.blue, size: 15,)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.edit, color: Colors.blue, size: 15,),
                              Text(
                                'Modify',
                                style: TextStyle(color: Colors.blue, fontSize: 15),
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
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookAppointmentScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        'Book a new appointment',
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
                SizedBox(
                  height: 60,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.home, size: 60, color: Colors.blue,))
              ],
            ),
          ),
        ));
  }
}
