import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'home_screen.dart';
import 'main.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final AssetImage imageLogo = AssetImage('assets/images/shield_logo.png');
    final AssetImage imageText =
        AssetImage('assets/images/shield_text_logo.jpeg');

    return Scaffold(
      backgroundColor: Color(0xFFC6C0F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 20.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image(
                          image: imageLogo,
                          width: 100,
                          height: 100,
                        ),
                        Image(
                          image: imageText,
                          width: 100,
                          height: 30,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Color(0xFF1d1b5f),
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          'Sign in to continue',
                          style: TextStyle(
                            color: Color(0xFF5a5768),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              User? user = FirebaseAuth.instance.currentUser;
                              if (user != null) {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              } else {
                                GoogleSignIn googleSignIn = GoogleSignIn();

                                GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

                                if (googleSignInAccount != null) {
                                  GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

                                  final AuthCredential credential = GoogleAuthProvider.credential(accessToken: googleSignInAuthentication.accessToken, idToken: googleSignInAuthentication.idToken,
                                  );
                                  try {
                                    final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  } on FirebaseAuthException catch (e) {

                                  }

                                }
                                // User? user = await Authentication.signInWithGoogle(context: context);
                                // await FirebaseFirestore.instance.collection('users').add(user);
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                'Sign in with google',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFFffffff),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF5251a34)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        BorderSide(color: Color(0xFF5251a34))),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                  Size(double.infinity, 50)),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'or',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              User? user = FirebaseAuth.instance.currentUser;
                              if (user != null) {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              } else {
                                final LoginResult result =
                                    await FacebookAuth.instance.login(
                                  permissions: [
                                    'email',
                                    'user_birthday',
                                    'user_gender'
                                  ],
                                ); // by default we request the email and the public profile
// or FacebookAuth.i.login()
                                if (result.status == LoginStatus.success) {
                                  final userData =
                                      await FacebookAuth.i.getUserData(
                                    fields:
                                        "name,email,picture.width(200),birthday,gender",
                                  );
                                  final AccessToken accessToken = result.accessToken!;
                                  final AuthCredential facebookAuthCredential = FacebookAuthProvider.credential(accessToken.token);
                                  final userCredential = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
                                  await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);

                                  await FirebaseFirestore.instance.collection('users').add(userData);
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ),
                                  );

                                  // userData['email'] =

                                  print(result.status);
                                  print(userCredential);
                                } else {
                                  print(result.status);
                                  print(result.message);
                                }
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 30,
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Icon(Icons.facebook),
                                  Text(
                                    'Sign in with facebook',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFFffffff),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                ],
                              ),
                            ),
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff333e93)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        BorderSide(color: Color(0xFF5251a34))),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                  Size(double.infinity, 50)),
                            )),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Text(
                            'By signing in, you accept our ',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFffffff),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                          Text(
                            'Terms and Conditions',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff000088),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
