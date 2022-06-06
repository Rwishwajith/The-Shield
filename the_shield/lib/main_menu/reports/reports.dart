import 'package:flutter/material.dart';
import 'package:the_shield/main_menu/reports/share_reports.dart';
import 'package:the_shield/main_menu/reports/view_reports.dart';
import 'package:the_shield/main_menu/vaccine_compatibility.dart';

import '../feedback.dart';
import 'genarate_reports.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  _ReportsScreenState createState() =>
      _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');
  List<dynamic> reportsList = [
    {"title": "GENERATE REPORTS", "image": 'assets/images/GRR.PNG'},
    {"title": "SHARE REPORTS", "image": 'assets/images/SRR.PNG'},
    {"title": "VIEW REPORTS", "image": 'assets/images/VR.PNG'},
    {"title": "FEEDBACK", "image": 'assets/images/F.PNG'},
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
                'Reports',
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
                    itemCount: reportsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      // AssetImage assetImage = AssetImage(dashboardList[index]['image']);
                      AssetImage assetImage = AssetImage(reportsList[index]['image']);
                      return GestureDetector(
                        onTap: () {
                          if(reportsList[index]['title'] == 'GENERATE REPORTS') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GenerateReportsScreen(),
                              ),
                            );
                          } else if(reportsList[index]['title'] == 'FEEDBACK') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FeedbackScreen(),
                              ),
                            );
                          } else if(reportsList[index]['title'] == 'VIEW REPORTS') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewReportsScreen(),
                            ),
                          );
                          } else if(reportsList[index]['title'] == 'SHARE REPORTS') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShareReportsScreen(),
                            ),
                          );
                          }
                        },
                        child: Card(
                          color: Colors.white,
                          child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        reportsList[index]['title'],
                                        style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Image(
                                    image: assetImage,
                                    width: 150,
                                    height: 150,
                                  ),
                                ],
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
