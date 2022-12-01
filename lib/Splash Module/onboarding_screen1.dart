import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/Splash%20Module/onboarding_screen2.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:delayed_display/delayed_display.dart';

class onboardScreen1 extends StatelessWidget {
  final Duration initialDelay = Duration(milliseconds: 100);
  onboardScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),

      body: Column(
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
              Column(
                children: [
                  DelayedDisplay(
                    delay: Duration(milliseconds: initialDelay.inMilliseconds + 700),
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.22,
                      decoration: BoxDecoration(
                          // color: Colors.black,
                          image: DecorationImage(
                        image: AssetImage("assets/onboard_timelink.png"),
                      )),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: initialDelay.inMilliseconds + 1100),
                    child: Container(
                      height: screenHeight * 0.4,
                      decoration: BoxDecoration(
                          // color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/onboard_frame.png"),
                              fit: BoxFit.contain)),
                    ),
                  ),
                ],
              )
            ],
          ),
          // Container(
          //   height: screenHeight,
          //   width: screenWidth,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage("assets/onboard_timelink.png"),fit: BoxFit.fill,),
          //   ),
          //
          // ),
          //     Container(decoration: BoxDecoration(
          // color: Colors.black,
          // image: DecorationImage(image: AssetImage("assets/onboard_timelink.png"),fit: BoxFit.fill)),)
          SizedBox(
            height: screenHeight * 0.01,
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: initialDelay.inMilliseconds + 1800),
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
            delay: Duration(milliseconds: initialDelay.inMilliseconds + 2200),
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
            delay: Duration(milliseconds: initialDelay.inMilliseconds + 2600),
            child: CustomContainer(
              callback: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => onboardScreen2()));
              },
              title: "Start",
            ),
          ),
        ],
      ),
    );
  }
}
