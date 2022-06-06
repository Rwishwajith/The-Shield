import 'package:flutter/material.dart';

import '../../home_screen.dart';
import '../medical_assistance/book_appointment.dart';

class ViewReportsScreen extends StatefulWidget {
  const ViewReportsScreen({Key? key}) : super(key: key);

  @override
  _ViewReportsScreenState createState() => _ViewReportsScreenState();
}

class _ViewReportsScreenState extends State<ViewReportsScreen> {
  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');
  final AssetImage assetImage =
  const AssetImage('assets/images/shield_logo.png');

  List<dynamic> generateList = [
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
    {"title": "09/04/2022", "sub": 'Cardiologist - Lalith Rajapaksha'},
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
                'View Reports',
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
            ),
          ),
        ));
  }
}
