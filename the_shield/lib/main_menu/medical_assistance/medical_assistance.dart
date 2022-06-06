import 'package:flutter/material.dart';
import 'package:the_shield/main_menu/reports/reports.dart';
import 'package:the_shield/main_menu/vaccine_compatibility.dart';

import '../get_help.dart';
import 'book_appointment.dart';

class MedicalAssistanceScreen extends StatefulWidget {
  const MedicalAssistanceScreen({Key? key}) : super(key: key);

  @override
  _MedicalAssistanceScreenState createState() =>
      _MedicalAssistanceScreenState();
}

class _MedicalAssistanceScreenState extends State<MedicalAssistanceScreen> {
  final AssetImage logoImage =
      const AssetImage('assets/images/shield_logo.png');
  List<dynamic> getHelpList = [
    {"title": "SHARE REPORTS", "image": 'assets/images/SR.PNG'},
    {"title": "BOOK APPOINTMENT", "image": 'assets/images/BA.PNG'},
    {"title": "SEND AN EMAIL/TEXT", "image": 'assets/images/SE.PNG'},
    {"title": "GET HELP", "image": 'assets/images/GH.PNG'},
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
                'Medical Assistance',
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
                GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemCount: getHelpList.length,
                    itemBuilder: (BuildContext context, int index) {
                      // AssetImage assetImage = AssetImage(dashboardList[index]['image']);
                      AssetImage assetImage = AssetImage(getHelpList[index]['image']);
                      return GestureDetector(
                        onTap: () {
                          if(getHelpList[index]['title'] == 'BOOK APPOINTMENT') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookAppointmentScreen(),
                              ),
                            );
                          } else if(getHelpList[index]['title'] == 'MEDICAL ASSISTANCE') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MedicalAssistanceScreen(),
                              ),
                            );
                          } else if(getHelpList[index]['title'] == 'SHARE REPORTS') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReportsScreen(),
                              ),
                            );
                          }
                          else if(getHelpList[index]['title'] == 'GET HELP') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GetHelpScreen(),
                            ),
                          );
                          }
                        },
                        child: Card(
                          color: Colors.white,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Image(
                                        image: assetImage,
                                        width: 250,
                                        height: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          getHelpList[index]['title'],
                                          style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
