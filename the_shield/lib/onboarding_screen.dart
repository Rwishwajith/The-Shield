import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_shield/login_screen.dart';

import 'home_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final AssetImage logoImage = const AssetImage('assets/images/shield_logo.png');
  final AssetImage healthCare = const AssetImage('assets/images/health_care.png');
  final AssetImage monitoring = const AssetImage('assets/images/monitor_side_effects.png');
  final AssetImage generateReports = const AssetImage('assets/images/generate_reports.png');

  Future<void> _onIntroEnd(context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SignInScreen()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {

    final AssetImage imageLogo = AssetImage('assets/images/shield_logo.png');
    final AssetImage imageText = AssetImage('assets/images/shield_text_logo.jpeg');
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xFFc6c0f4),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Color(0xFFC6C0F4),
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            // child: _buildImage('flutter.png', 100),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          titleWidget: Column(
            children: [
              Image(image: imageLogo,width: 100, height: 100,),
              Image(image: imageText,width: 100, height: 30,),
            ],
          ),
          bodyWidget: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'CHECK VACCINE',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xff253067),
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'COMPATIBILITY',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xff253067),
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20,
              ),
              Image(image: healthCare, width: double.infinity, height: 400,),
            ],
          ),
          // image:
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Center(
                child: Image(image: imageLogo,width: 100, height: 100,),
              ),
              Center(
                child: Image(image: imageText,width: 100, height: 30,),
              ),
            ],
          ),
          bodyWidget: Column(
            children: [
              Text(
                'MONITOR SIDE',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xff253067),
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'EFFECTS',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xff253067),
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20,
              ),
              Image(image: monitoring, width: double.infinity, height: 400,),
            ],
          ),
          // image: _buildImage('img2.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Center(
                child: Image(image: imageLogo,width: 100, height: 100,),
              ),
              Center(
                child: Image(image: imageText,width: 100, height: 30,),
              ),
            ],
          ),
          bodyWidget: Column(
            children: [
              Text(
                'GENERATE',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xff253067),
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'REPORTS',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xff253067),
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20,
              ),
              Image(image: monitoring, width: double.infinity, height: 400,),
            ],
          ),
          // image: _buildImage('img3.jpg'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.blueGrey,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}