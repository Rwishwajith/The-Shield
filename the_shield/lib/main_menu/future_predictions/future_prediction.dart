import 'package:flutter/material.dart';
import 'package:the_shield/main_menu/future_predictions/check_predictions.dart';
import 'package:the_shield/main_menu/future_predictions/view_history_predictions.dart';

import '../feedback.dart';
import '../medical_assistance/medical_assistance.dart';
import '../vaccine_compatibility.dart';

class FuturePredictionScreen extends StatefulWidget {
  const FuturePredictionScreen({Key? key}) : super(key: key);

  @override
  _FuturePredictionScreenState createState() =>
      _FuturePredictionScreenState();
}

class _FuturePredictionScreenState
    extends State<FuturePredictionScreen> {
  @override
  Widget build(BuildContext context) {

    final AssetImage logoImage =
    const AssetImage('assets/images/shield_logo.png');
    List<dynamic> sideEffectList = [
      {"title": "CHECK PREDICTIONS", "image": 'assets/images/CHP.PNG'},
      {"title": "VIEW HISTORY", "image": 'assets/images/PREDHIS.PNG'},
      {"title": "FEEDBACK", "image": 'assets/images/FEED.PNG'},
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
                'Future Predictions',
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
                          if(sideEffectList[index]['title'] == 'FEEDBACK') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FeedbackScreen(),
                              ),
                            );
                          } else if(sideEffectList[index]['title'] == 'VIEW HISTORY') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PredictionHistoryScreen(),
                              ),
                            );
                          } else if(sideEffectList[index]['title'] == 'CHECK PREDICTIONS') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CheckPredictionsScreen(),
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
                                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
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
