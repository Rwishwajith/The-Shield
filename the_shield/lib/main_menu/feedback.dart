import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    final AssetImage logoImage =
        const AssetImage('assets/images/shield_logo.png');
    final AssetImage assetImage = const AssetImage('assets/images/lalith.JPG');
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
              // child: Text(
              //   'Side Effect Monitoring',
              //   style: TextStyle(color: Colors.black, fontSize: 20),
              // ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Possible high blood sugar based diabetes',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Image(image: logoImage, width: 200, height: 200,),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Dear patient,\nThere is a high blood sugar that has been recorded in your last report and you should book a visit with a specialist as soon as possible.',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                                child: Image(
                              image: assetImage,
                              width: 110,
                              height: 110,
                            )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. Lalith Rajapaksha',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    'Cardiologist',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    'MOH',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    'Kurunegala 5Km',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    itemSize: 15,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 1.0,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      print('tapped');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        'Book a visit',
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
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
