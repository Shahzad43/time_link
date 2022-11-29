import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:time_link/Splash%20Module/onboarding_screen1.dart';
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetologinScreen();
  }
  void _navigatetologinScreen() async{
    Timer(Duration (seconds:3),(() => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>onboardScreen1()))));
  // void _navigatetologinScreen() async{
  //   Timer(Duration (seconds:3),(() => Navigator.of(context).push(
  //     nati(
  //       targetPage:onboardScreen1(
  //
  //       ),
  //       splashColor: Color(0xffA355FE),
  //       startFractionalOffset: FractionalOffset(0.5, 0.3),
  //       transitionDuration: Duration(milliseconds: 2000),
  //     ),
  //   )));
  }
  // void initialization() async {
  //   // This is where you can initialize the resources needed by your app while
  //   // the splash screen is displayed.  Remove the following example because
  //   // delaying the user experience is a bad design practice!
  //   // ignore_for_file: avoid_print
  //   print('ready in 3...');
  //   await Future.delayed(const Duration(seconds: 1));
  //   print('ready in 2...');
  //   await Future.delayed(const Duration(seconds: 1));
  //   print('ready in 1...');
  //   await Future.delayed(const Duration(seconds: 1));
  //   print('go!');
  //   onboardScreen1();
  //   FlutterNativeSplash.remove();
  // }
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Container(

      decoration: BoxDecoration(
          color: Color(0xffB3D4F4),
        image: DecorationImage(image: AssetImage("assets/splash_logo.png")))
      );

  }
}
