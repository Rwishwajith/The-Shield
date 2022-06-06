import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_shield/onboarding_screen.dart';
import 'package:the_shield/splash_screen.dart';
import 'login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFire Samples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: SplashScreen(),
    );
  }
}

class Authentication {
  static Future<FirebaseApp> initializeFirebase() async {
    print('inside the auth');
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    print('firebase app ${firebaseApp.name}');

    // TODO: Add auto login logic

    return firebaseApp;
  }

  // static Future<User?> signInWithGoogle({required BuildContext context}) async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user;
  // }

  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    if (kIsWeb) {
      GoogleAuthProvider authProvider = GoogleAuthProvider();

      try {
        final UserCredential userCredential =
        await auth.signInWithPopup(authProvider);

        user = userCredential.user;
      } catch (e) {
        print(e);
      }
    } else {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
      await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        try {
          final UserCredential userCredential =
          await auth.signInWithCredential(credential);

          user = userCredential.user;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'account-exists-with-different-credential') {
            // ...
          } else if (e.code == 'invalid-credential') {
            // ...
          }
        } catch (e) {
          // ...
        }
      }
    }

    return user;
  }

  static Future<void> signOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {

        await googleSignIn.signOut();
      await FirebaseAuth.instance.signOut();

    } catch (e) {

      print(e);

    }
  }
    // final GoogleSignIn googleSignIn = GoogleSignIn();

    // final GoogleSignInAccount? googleSignInAccount =
    // await googleSignIn.signIn();

    // if (googleSignInAccount != null) {
      // final GoogleSignInAuthentication googleSignInAuthentication =
      // await googleSignInAccount.authentication;

      // final AuthCredential credential = GoogleAuthProvider.credential(
      //   accessToken: googleSignInAuthentication.accessToken,
      //   idToken: googleSignInAuthentication.idToken,
      // );

  //     try {
  //       final UserCredential userCredential =
  //       await auth.signInWithCredential(credential);
  //
  //       user = userCredential.user;
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'account-exists-with-different-credential') {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           Authentication.customSnackBar(
  //             content:
  //             'The account already exists with a different credential.',
  //           ),
  //         );
  //       } else if (e.code == 'invalid-credential') {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           Authentication.customSnackBar(
  //             content:
  //             'Error occurred while accessing credentials. Try again.',
  //           ),
  //         );
  //       }
  //     } catch (e) {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         Authentication.customSnackBar(
  //           content: 'Error occurred using Google Sign-In. Try again.',
  //         ),
  //       );
  //     }
  //   }
  //
  //   return user;
  // }

  // static SnackBar customSnackBar({required String content}) {
  //   return SnackBar(
  //     backgroundColor: Colors.black,
  //     content: Text(
  //       content,
  //       style: TextStyle(color: Colors.redAccent, letterSpacing: 0.5),
  //     ),
  //   );
  // }

  // static Future<void> signOut({required BuildContext context}) async {
  //   // final GoogleSignIn googleSignIn = GoogleSignIn();
  //
  //   try {
  //     await FirebaseAuth.instance.signOut();
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       Authentication.customSnackBar(
  //         content: 'Error signing out. Try again.',
  //       ),
  //     );
  //   }
  // }
}