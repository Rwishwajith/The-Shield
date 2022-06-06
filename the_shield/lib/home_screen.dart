import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'login_screen.dart';
import 'main.dart';
import 'main_menu/appointments/my_appointments.dart';
import 'main_menu/forum/forum_discusion.dart';
import 'main_menu/future_predictions/future_prediction.dart';
import 'main_menu/get_help.dart';
import 'main_menu/medical_assistance/medical_assistance.dart';
import 'main_menu/reports/reports.dart';
import 'main_menu/side_effect_monitoring/log_side_effects.dart';
import 'main_menu/side_effect_monitoring/side_effect_monitoring.dart';
import 'main_menu/statistics/statistics.dart';
import 'main_menu/vaccine_compatibility.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(key: key);


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<dynamic> firebaseUser = [];
  String appBarTitle = 'Dashboard';
  String search = 'Search';
  String? userName = '';
  String? pictureUrl = '';
  bool _isSigningOut = false;
  late Widget centerChild;
  List<dynamic> dashboardList = [
    {"title": "VACCINE COMPATIBILITY", "image": 'assets/images/VC.png'},
    {"title": "SIDE EFFECTS MONITORING", "image": 'assets/images/SEM.PNG'},
    {"title": "FUTURE PREDICTIONS", "image": 'assets/images/FP.PNG'},
    {"title": "MEDICAL ASSISTANCE", "image": 'assets/images/MA.PNG'},
    {"title": "GENERATE REPORTS", "image": 'assets/images/GR.PNG'},
    {"title": "STATISTICS", "image": 'assets/images/S.PNG'},
  ];
  Stream collectionStream = FirebaseFirestore.instance.collection('users').snapshots();

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  getUserDetails() {
    // return FirebaseFirestore.instance
    //     .collection('users')
    //     .get()
    //     .then((QuerySnapshot querySnapshot) {
    //   querySnapshot.docs.forEach((doc) {
    //     setState(() {
    //       firebaseUser.add(doc);
    //     });
    User? user = FirebaseAuth.instance.currentUser;

        setState(() {
          userName = user?.displayName;
          pictureUrl = user?.photoURL;
        });

  }

  @override
  void initState() {
    centerChild = Dashboard();
    getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection('users').snapshots();
    final AssetImage logoImage =
        const AssetImage('assets/images/shield_logo.png');

    return Scaffold(
      backgroundColor: Color(0xffcbc5f9),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 140.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu_sharp,
              color: Colors.black,
            ),
          ),
        ),
        title: Image(image: logoImage, width: 50, height: 50),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 130.0, left: 20.0),
          child: Container(
            height: 70,
            child: Text(
              appBarTitle,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    autofocus: false,
                    autocorrect: false,
                    keyboardType: TextInputType.visiblePassword,
                    // validator: (value) => value.isEmpty?'Please enter email':null,
                    // onSaved: (value) => doctor = value!,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search,color: Colors.black,),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Search',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: centerChild,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xffcbc5f9),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              NetworkImage(pictureUrl!),

                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userName!),
                          Text('Colombo, Sri Lanka'),
                        ],
                      ),
                    ],
                  )),
            ),
            ListTile(
              title: const Text(
                'Dashboard',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.dashboard_outlined,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                setState(() {
                  centerChild = Dashboard();
                  appBarTitle = 'Dashboard';
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              title: const Text(
                'My Appointments',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.calendar_today,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAppointmentsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Log Side Effects',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.add_circle_outline,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogSideEffectsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Side Effects Reports',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.newspaper,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                setState(() {
                  centerChild = MyAppointments();
                  appBarTitle = 'My Appointments';
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              title: const Text(
                'Forum',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.chat_bubble_outline,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForumDiscussionScreen(),
                  ),
                );
                setState(() {

                });
              },
            ),
            ListTile(
              title: const Text(
                'Statistics',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.show_chart_outlined,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StatisticsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Account Settings',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.person,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                setState(() {
                  // centerChild = MyAppointments();
                  // appBarTitle = 'My Appointments';
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              title: const Text(
                'Help',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.help_outline,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetHelpScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'SignOut',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.deepPurpleAccent,
              ),
              onTap: () async {
                final GoogleSignIn googleSignIn = GoogleSignIn();
                  try {
                    await googleSignIn.signOut();
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    );
                  } catch (e) {

                  }

              },
            ),
          ],
        ),
      ),
    );
  }

  Widget Dashboard() {
    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 0.8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemCount: dashboardList.length,
        itemBuilder: (BuildContext context, int index) {
          // AssetImage assetImage = AssetImage(dashboardList[index]['image']);
          AssetImage assetImage = AssetImage(dashboardList[index]['image']);
          return GestureDetector(
            onTap: () {
              if(dashboardList[index]['title'] == 'VACCINE COMPATIBILITY') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VaccineCompatibility(),
                  ),
                );
              } else if(dashboardList[index]['title'] == 'MEDICAL ASSISTANCE') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicalAssistanceScreen(),
                  ),
                );
              } else if(dashboardList[index]['title'] == 'GENERATE REPORTS') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReportsScreen(),
                  ),
                );
              } else if(dashboardList[index]['title'] == 'SIDE EFFECTS MONITORING') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SideEffectMonitoringScreen(),
                  ),
                );
              } else if(dashboardList[index]['title'] == 'FUTURE PREDICTIONS') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FuturePredictionScreen(),
                  ),
                );
              } else if(dashboardList[index]['title'] == 'STATISTICS') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StatisticsScreen(),
                  ),
                );
              }
            },
            child: Card(
              color: Colors.white,
              child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      dashboardList[index]['title'],
                      style: TextStyle(color: Colors.deepPurple, fontSize: 20),
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
        });
  }

  Widget MyAppointments() {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(5, (index) {
        return Container(
            height: 20,
            width: 20,
            color: Colors.deepPurpleAccent,
            child: Center(
              child: Text(
                'Help',
                style: TextStyle(color: Colors.black),
              ),
            ));
      }),
    );
  }

  Widget MedicalHelp() {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(5, (index) {
        return Container(
            height: 20,
            width: 20,
            color: Colors.deepPurpleAccent,
            child: Center(
              child: Text(
                'Help',
                style: TextStyle(color: Colors.black),
              ),
            ));
      }),
    );
  }
}
