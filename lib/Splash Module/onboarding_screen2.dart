import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/Dashboard%20Module/View/dashboard_screen.dart';
import 'package:time_link/Login%20Module/View/login_screen.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:delayed_display/delayed_display.dart';

class onboardScreen2 extends StatelessWidget {
  final Duration initialDelay = Duration(seconds: 0);

  onboardScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData){
            return dashboardScreen();
          }
          else return Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: screenHeight * 0.7,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/onBoard_backgound.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 22,
                    top: screenHeight * 0.10,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(255, 255, 255, 0.4),
                      radius: screenHeight * 0.05,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        child: const Image(
                            image: AssetImage("assets/onboarding_clock.png")),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 22,
                      top: screenHeight * 0.18,
                      child: Container(
                        width: screenWidth * 0.67,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        // height: 59,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.4),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text("Do you ever wish you had more time",
                            style: GoogleFonts.rubik(
                                fontSize: 20, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center),
                      )),
                  Positioned(
                    left: 22,
                    top: screenHeight * 0.35,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(255, 255, 255, 0.4),
                      radius: screenHeight * 0.05,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        child: const Image(
                            image: AssetImage("assets/onboarding_calender.png")),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 22,
                      top: screenHeight * 0.43,
                      child: Container(
                        width: screenWidth * 0.67,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        // height: 59,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.4),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text("What if we have a solution for you?",
                            style: GoogleFonts.rubik(
                                fontSize: 20, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center),
                      )),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 1),
                child: Text("Hey, time saver",
                    style: GoogleFonts.rubik(
                        color: Color(0xff65A6E7),
                        fontWeight: FontWeight.w500,
                        fontSize: 28),
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 2),
                child: Text("Welcome to time link",
                    style: GoogleFonts.rubik(
                        color: Color(0xff686868),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 3),
                child: CustomContainer(
                  callback: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => loginScreen()));
                  },
                  title: "Continue",
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
