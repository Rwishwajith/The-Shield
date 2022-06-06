import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShareReportsScreen extends StatefulWidget {
  const ShareReportsScreen({Key? key}) : super(key: key);

  @override
  _ShareReportsScreenState createState() => _ShareReportsScreenState();
}

class _ShareReportsScreenState extends State<ShareReportsScreen> {

  final AssetImage logoImage =
  const AssetImage('assets/images/shield_logo.png');

  final AssetImage adobeReader = const AssetImage('assets/images/adobeReader.png');
  final AssetImage doctor = const AssetImage('assets/images/lalith.JPG');
  final AssetImage gmail = const AssetImage('assets/images/gmail.jpeg');
  final AssetImage chatBot = const AssetImage('assets/images/chatbot.png');
  final AssetImage whatsapp = const AssetImage('assets/images/whatsapp.png');

  int selectedIndex = 0;

  List<dynamic> sideEffectListHistory1 = [
    {"title": "2022/04/12", "sub": 'Side effect report'},
    {"title": "2022/04/12", "sub": 'Side report'},
    {"title": "2022/04/12", "sub": 'Side effect report'},
    {"title": "2022/04/12", "sub": 'Side effect report'},
  ];

  List<dynamic> sideEffectListHistory2 = [
    {"title": "2022/04/12", "sub": 'Side effect report'},
    {"title": "2022/04/12", "sub": 'Side effect report'},
    {"title": "2022/04/12", "sub": 'Side effect report'},
    {"title": "2022/04/12", "sub": 'Side effect report'},
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
                'Share Reports',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: sideEffectListHistory1.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 12,);
                    },
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: 170,
                          height: 220,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 20.0, right: 20.0),
                          decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(image: adobeReader, width: 80, height: 80,),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                sideEffectListHistory1[index]['title'],
                                style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                sideEffectListHistory1[index]['sub'],
                                style: TextStyle(color: Colors.black, fontSize: 12),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: const EdgeInsets.all(3.0),
                                  padding: const EdgeInsets.only(
                                      top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      border: Border.all(color: Colors.orange),
                                      borderRadius: BorderRadius.all(Radius.circular(20))),
                                  child: Icon(
                                    Icons.share, color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Shared',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: sideEffectListHistory2.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 12,);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: 170,
                        height: 220,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(image: adobeReader, width: 80, height: 80,),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              sideEffectListHistory2[index]['title'],
                              style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              sideEffectListHistory2[index]['sub'],
                              style: TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin: const EdgeInsets.all(3.0),
                                padding: const EdgeInsets.only(
                                    top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    border: Border.all(color: Colors.greenAccent),
                                    borderRadius: BorderRadius.all(Radius.circular(20))),
                                child: Icon(
                                  Icons.download_outlined, color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.only(
                      top: 5.0, bottom: 5.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: Color(0xff3a2f4b),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 105,
                            height: 130,
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.only(
                                top: 5.0, bottom: 5.0, left: 20.0, right: 10.0),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image(image: adobeReader, width: 50, height: 50,),
                                Text(
                                  sideEffectListHistory1[selectedIndex]['title'],
                                  style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  sideEffectListHistory1[selectedIndex]['sub'],
                                  style: TextStyle(color: Colors.black, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image(
                                        image: doctor,
                                        width: 90,
                                        height: 90,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr. Lalith Rajapaksha',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'Cardiologist',
                                          style: TextStyle(color: Colors.pink.shade900),
                                        ),
                                        Text(
                                          'MOH',
                                          style: TextStyle(color: Colors.pink.shade900),
                                        ),
                                        Text(
                                          'Kurunegala 5Km',
                                          style: TextStyle(color: Colors.pink.shade900),
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
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(5.0),
                                    padding: const EdgeInsets.only(
                                        top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xff8a5883),
                                        border: Border.all(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Image(image: gmail, width: 20, height: 20,),
                                        Text(
                                          'Send Email',
                                          style: TextStyle(color: Colors.white, fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(5.0),
                                    padding: const EdgeInsets.only(
                                        top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xff8a5883),
                                        border: Border.all(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Image(image: chatBot, width: 20, height: 20,),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Send via\nChatbot',
                                          style: TextStyle(color: Colors.white, fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.only(
                                    top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                    color: Color(0xff8a5883),
                                    border: Border.all(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  children: [
                                    Image(image: whatsapp, width: 20, height: 20,),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Send\nWhatsapp',
                                      style: TextStyle(color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
