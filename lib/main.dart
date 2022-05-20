import 'package:flutter/material.dart';
import 'package:kitabi/error_screens/PageNotFound.dart';
import 'Login/login.dart';
import 'signup/signup.dart';
import 'splashScreens/HomeScreen.dart';
import 'Login/reset_pass/forgot_pass.dart';
import 'Login/reset_pass/verification.dart';
import 'Login/reset_pass/new_password.dart';
import 'error_screens/NoFavorites.dart';
import 'error_screens/NoConn.dart';
import 'error_screens/NoNotif.dart';
import 'error_screens/NoRes.dart';
import 'package:get/get.dart';
import 'onBoarding/OnBoard1.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

  
