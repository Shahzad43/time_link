import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_link/Dashboard%20Module/View/dashboard_screen.dart';
import 'package:time_link/Login%20Module/View/login_screen.dart';
import 'package:time_link/Splash%20Module/onboarding_screen1.dart';
import 'package:time_link/Splash%20Module/onboarding_screen2.dart';
import 'package:time_link/Splash%20Module/splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

// void main() {
//   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   runApp(const myApp());
// }

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: splashScreen(),
      // home: dashboardScreen(),
      // home: dashboardScreen(),

      // home: loginScreen()
      // home: onboardScreen2(),


    );
  }
}
