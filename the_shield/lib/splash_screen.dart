import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late Animation<double> _animation;
  late Animation<double> _animation2;
  final AssetImage assetImage2 =
      const AssetImage('assets/images/shield_logo.png');

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    _controller2 = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    _animation = Tween(begin: 0.0, end: 1.2).animate(_controller);

    _animation2 = Tween(begin: 0.0, end: 1.2).animate(_controller2);

    Timer(const Duration(seconds: 4), () async {
      if(await IsFirstRun.isFirstRun()) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => OnBoardingPage(),
        ));
      } else {
        User? user = FirebaseAuth.instance.currentUser;
        if(user != null) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        } else {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => SignInScreen(),
          ));
        }
      }

    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => _controller.forward());
    Future.delayed(const Duration(seconds: 2))
        .then((value) => _controller2.forward());

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.purple, Colors.deepPurple])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: ScaleTransition(
                      scale: _animation2,
                      alignment: Alignment.center,
                      child: Image(image: assetImage2, width: 150, height: 150),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: ScaleTransition(
                        scale: _animation,
                        // alignment: Alignment.bottomCenter,
                        child: const Text(
                          'The SHEILD',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 300,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      'Developed by',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: const Alignment(0.0,1.0),
                    child: const Text(
                      'Ruchira Wishwajith',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
