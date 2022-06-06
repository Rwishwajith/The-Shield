import 'package:flutter/material.dart';

class VaccineTypeScreen extends StatefulWidget {
  const VaccineTypeScreen({Key? key}) : super(key: key);

  @override
  _VaccineTypeScreenState createState() =>
      _VaccineTypeScreenState();
}

class _VaccineTypeScreenState extends State<VaccineTypeScreen> {
  @override
  Widget build(BuildContext context) {
    final AssetImage logoImage =
    const AssetImage('assets/images/shield_logo.png');

    final AssetImage pfyser = const AssetImage('assets/images/pfiser.png');
    final AssetImage sinopharm = const AssetImage('assets/images/sinopharm.jpg');
    final AssetImage astrsenica = const AssetImage('assets/images/astrasenica.png');

    List<dynamic> sideEffectListHistory = [
      {"title": "12", "sub": 'Total side effects'},
      {"title": "3", "sub": 'severe side effects'},
      {"title": "00", "sub": '4.6'},
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
                'Vaccine Type',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'VACCINATION OVERVIEW',
                    style:
                    TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(image: pfyser, width: 50, height: 50,),
                            Column(
                              children: [
                                Text(
                                  'pfizer',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 8),
                                ),
                                Text(
                                  '255 259',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Side effects',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red.shade900,
                                    ),
                                    Text(
                                      '323',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(image: sinopharm, width: 50, height: 50,),
                            Column(
                              children: [
                                Text(
                                  'Sinopharm',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 8),
                                ),
                                Text(
                                  '255 259',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Side effects',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red.shade900,
                                    ),
                                    Text(
                                      '323',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(image: astrsenica, width: 50, height: 50,),
                            Column(
                              children: [
                                Text(
                                  'Aztrazeneca',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 8),
                                ),
                                Text(
                                  '255 259',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Side effects',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red.shade900,
                                    ),
                                    Text(
                                      '323',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: Color(0xff3a2f4b),
                      border: Border.all(color: Color(0xff3a2f4b)),
                      borderRadius:
                      BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vaccine Type',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              'This Year',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              'Week',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              'Month',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(image: pfyser, width: 50, height: 50,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red.shade900,
                                    ),

                                  ],
                                ),
                                Text(
                                  '650',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            LinearProgressIndicator(
                              value: 0.6,
                              valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                              backgroundColor: Colors.transparent,
                              color: Colors.transparent,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(image: sinopharm, width: 50, height: 50,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red.shade900,
                                    ),

                                  ],
                                ),
                                Text(
                                  '650',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            LinearProgressIndicator(
                              value: 0.6,
                              valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                              backgroundColor: Colors.transparent,
                              color: Colors.transparent,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(image: astrsenica, width: 50, height: 50,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red.shade900,
                                    ),

                                  ],
                                ),
                                Text(
                                  '650',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            LinearProgressIndicator(
                              value: 0.6,
                              valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                              backgroundColor: Colors.transparent,
                              color: Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}