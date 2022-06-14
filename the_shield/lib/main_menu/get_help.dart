import 'package:flutter/material.dart';
import 'package:the_shield/main_menu/remedies/aggregating_factors.dart';
import 'package:the_shield/main_menu/remedies/factor_affection.dart';
import 'package:the_shield/main_menu/remedies/identifyFactors.dart';
import 'package:the_shield/main_menu/remedies/simple_home_remedies.dart';
import 'package:the_shield/main_menu/side_effect_monitoring/log_side_effects.dart';
import 'package:the_shield/main_menu/side_effect_monitoring/side_effect_history.dart';
import 'package:url_launcher/url_launcher.dart';

import 'medical_assistance/habitual_changes.dart';

class GetHelpScreen extends StatefulWidget {
  const GetHelpScreen({Key? key}) : super(key: key);

  @override
  _GetHelpScreenState createState() =>
      _GetHelpScreenState();
}

class _GetHelpScreenState
    extends State<GetHelpScreen> {

  final Uri _url = Uri.parse('https://www.who.int/');
  Future<void>? _launched;

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {

    final AssetImage logoImage =
    const AssetImage('assets/images/shield_logo.png');
    List<dynamic> sideEffectList = [
      {"title": "WHO REMEDIES", "image": 'assets/images/WHO.PNG'},
      {"title": "SIMPLE HOME REMEDIES", "image": 'assets/images/SHR.PNG'},
      {"title": "FACTORS AFFECTING THE SIDE EFFECTS", "image": 'assets/images/FASE.PNG'},
      {"title": "AGGREGATING FACTORS", "image": 'assets/images/AGF.PNG'},
      {"title": "HABITUAL CHANGES", "image": 'assets/images/life-icon-22.jpg'},
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
                'Get Help',
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
                          print('tapped');
                          if(sideEffectList[index]['title'] == 'WHO REMEDIES') {
                            setState(() {
                              _launched = _launchInWebViewOrVC(_url);
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => LogSideEffectsScreen(),
                            //   ),
                            // );
                          } else if(sideEffectList[index]['title'] == 'SIMPLE HOME REMEDIES') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SimpleHomeRemediesScreen(),
                              ),
                            );
                          } else if(sideEffectList[index]['title'] == 'FACTORS AFFECTING THE SIDE EFFECTS') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => IdentifyFactorsScreen(),
                            ),
                          );
                          } else if(sideEffectList[index]['title'] == 'AGGREGATING FACTORS') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AggregatingFactorsScreen(),
                              ),
                            );
                          } else if(sideEffectList[index]['title'] == 'HABITUAL CHANGES') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HabitualChangesScreen(),
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
                                        sideEffectList[index]['title'],
                                        style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Image(
                                      image: assetImage,
                                      width: 150,
                                      height: 120,
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
