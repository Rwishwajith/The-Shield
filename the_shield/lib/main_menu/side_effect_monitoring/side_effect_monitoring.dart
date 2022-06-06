import 'package:flutter/material.dart';
import 'package:the_shield/main_menu/get_help.dart';
import 'package:the_shield/main_menu/side_effect_monitoring/side_effect_history.dart';
import 'package:the_shield/main_menu/side_effect_monitoring/timeline.dart';

import '../vaccine_compatibility.dart';
import 'log_side_effects.dart';

class SideEffectMonitoringScreen extends StatefulWidget {
  const SideEffectMonitoringScreen({Key? key}) : super(key: key);

  @override
  _SideEffectMonitoringScreenState createState() =>
      _SideEffectMonitoringScreenState();
}

class _SideEffectMonitoringScreenState
    extends State<SideEffectMonitoringScreen> {
  @override
  Widget build(BuildContext context) {

    final AssetImage logoImage =
    const AssetImage('assets/images/shield_logo.png');
    List<dynamic> sideEffectList = [
      {"title": "LOG SIDE EFFECTS", "image": 'assets/images/Lse.PNG'},
      {"title": "VIEW HISTORY", "image": 'assets/images/VH.PNG'},
      {"title": "TIMELINE", "image": 'assets/images/time.PNG'},
      {"title": "REMEDIES", "image": 'assets/images/remi.PNG'},
    ];

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
                'Side Effect Monitoring',
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
                    itemCount: sideEffectList.length,
                    itemBuilder: (BuildContext context, int index) {
                      // AssetImage assetImage = AssetImage(dashboardList[index]['image']);
                      AssetImage assetImage = AssetImage(sideEffectList[index]['image']);
                      return GestureDetector(
                        onTap: () {
                          if(sideEffectList[index]['title'] == 'LOG SIDE EFFECTS') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LogSideEffectsScreen(),
                              ),
                            );
                          } else if(sideEffectList[index]['title'] == 'VIEW HISTORY') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SideEffectHistoryScreen(),
                              ),
                            );
                          } else if(sideEffectList[index]['title'] == 'REMEDIES') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GetHelpScreen(),
                            ),
                          );
                          } else if(sideEffectList[index]['title'] == 'TIMELINE') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SideEffectTimelineScreen(),
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
                                    padding: const EdgeInsets.only(bottom: 20.0, left: 10.0, top: 10.0),
                                    child: Center(
                                      child: Text(
                                        sideEffectList[index]['title'],
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
