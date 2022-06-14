import 'package:flutter/material.dart';

class HabitualChangesScreen extends StatefulWidget {
  const HabitualChangesScreen({Key? key}) : super(key: key);


  @override
  _HabitualChangesScreenState createState() =>
      _HabitualChangesScreenState();
}

class _HabitualChangesScreenState extends State<HabitualChangesScreen> {


  DateTime selectedDate = DateTime.now();
  final AssetImage logoImage = const AssetImage('assets/images/shield_logo.png');
  final AssetImage headAcheImage = const AssetImage('assets/images/stress1.jpeg');
  String _diseases = 'Select';
  String _vaccine = 'Select';
  bool _vaccinationSelected = false;
  var items = [
    'Select',
    'Headache',
    'Headache2',
  ];

  var items2 = [
    'Select',
    '1 Day',
    '2 Days',
    '3 Days',
    '4 Days',
  ];

  List<dynamic> line1 = [
    {"title": "Diet", "image": 'assets/images/GettyImages.jpg'},
    {"title": "Medicine Intake", "image": 'assets/images/medicine_drugs.jpg'},
    {"title": "Socialize", "image": 'assets/images/friend-definition.jpg'},
  ];

  List<dynamic> line2 = [
    {"title": "Exercise", "image": 'assets/images/Stress.png'},
    {"title": "Sleeping pattern", "image": 'assets/images/male-sleeping.jpg'},
    {"title": "Alcohol and Smocking", "image": 'assets/images/sexual_dysfunction2.jpg'},
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
                'Habitual Changes',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                    color: Color(0x0ff3a2f4b),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Based on your body conditions and side effects you can follow.The suggested habitual changes to reduce the severity and effects of the vaccine',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  SizedBox(
                        height: 180,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: line1.length,
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
                                  image: DecorationImage(
                                      image: AssetImage(line1[index]['image']),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: Text(
                                  line1[index]['title'],
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  SizedBox(
                        height: 180,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: line2.length,
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
                                  image: DecorationImage(
                                      image: AssetImage(line2[index]['image']),
                                      fit: BoxFit.cover),
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: Text(
                                  line2[index]['title'],
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                    color: Color(0x0ff3a2f4b),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Diet',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        'Based on your body conditions and side effects you can follow.The suggested habitual changes to reduce the severity and effects of the vaccine',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
