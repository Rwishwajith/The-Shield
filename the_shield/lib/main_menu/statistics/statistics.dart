import 'package:flutter/material.dart';
import 'package:the_shield/main_menu/statistics/side_effect.dart';
import 'package:the_shield/main_menu/statistics/vaccine_type.dart';

import '../vaccine_compatibility.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  _StatisticsScreenState createState() =>
      _StatisticsScreenState();
}

class _StatisticsScreenState
    extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {

    final AssetImage logoImage =
    const AssetImage('assets/images/shield_logo.png');
    List<dynamic> sideEffectList = [
      {"title": "GENDER", "image": 'assets/images/GENDER.PNG'},
      {"title": "VACCINE", "image": 'assets/images/VAC.PNG'},
      {"title": "VACCINE DOSE", "image": 'assets/images/VDOS.PNG'},
      {"title": "BODY CONDITION", "image": 'assets/images/BDCON.PNG'},
      {"title": "AGE", "image": 'assets/images/AGESTAT.PNG'},
      {"title": "VACCINE TECHNOLOGY", "image": 'assets/images/VACTECH.PNG'},
      {"title": "TIME DURATION", "image": 'assets/images/TMDU.PNG'},
      {"title": "SEVERITY", "image": 'assets/images/SEVSTAT.PNG'},
      {"title": "SIDE EFFECTS", "image": 'assets/images/SESTAT.PNG'},
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
          title: Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: Image(image: logoImage, width: 50, height: 50),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 160.0, left: 20.0),
            child: Container(
              height: 50,
              child: Text(
                'Statistics',
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
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemCount: sideEffectList.length,
                    itemBuilder: (BuildContext context, int index) {
                      // AssetImage assetImage = AssetImage(dashboardList[index]['image']);
                      AssetImage assetImage = AssetImage(sideEffectList[index]['image']);
                      return GestureDetector(
                        onTap: () {
                          if(sideEffectList[index]['title'] == 'SIDE EFFECTS') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StatisticsSideEffectScreen(),
                              ),
                            );
                          } else if(sideEffectList[index]['title'] == 'VACCINE') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VaccineTypeScreen(),
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
                                    padding: const EdgeInsets.only(top: 50.0),
                                    child: Image(
                                      image: assetImage,
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0, left: 10.0, top: 10.0),
                                    child: Center(
                                      child: Text(
                                        sideEffectList[index]['title'],
                                        style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                                      ),
                                    ),
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
