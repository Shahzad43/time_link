import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/Dashboard%20Module/View/dashboard_screen.dart';
import 'package:time_link/Home%20Module/View/View%20Model/View/graphs_and_statistics.dart';
import 'package:time_link/Login%20Module/View/login_screen.dart';
import 'package:time_link/Order%20Module/View/View%20Model/View%20Model/View/subscription_screen.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:get/get.dart';
import 'package:time_link/utils/custom_textbox.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Drawer(
      backgroundColor: Color(0xffF5FAFF),

      // backgroundColor: Colors.black,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: screenWidth * 0.1, right: screenWidth * 0.1),
            height: screenHeight * 0.15,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffC59DF4), Color(0xffA150FF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profile_pic_side_menu.png"),
                    maxRadius: 45,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Push Puttichai",
                          style: GoogleFonts.poppins(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          textAlign: TextAlign.center),
                      // SizedBox(height: screenHeight*0.007,),
                      Text("pushputtichai@gmail.com",
                          style: GoogleFonts.poppins(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 8),
                          textAlign: TextAlign.center),
                    ],
                  )
                ]),
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.13, right: screenWidth * 0.1),
                child: Image(
                    image: AssetImage("assets/order_delievery_side_menu.png")),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Text("Active Order",
                    style: GoogleFonts.poppins(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Divider(
            color: Colors.black,
            // height: 30,
            thickness: 2,
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.13, right: screenWidth * 0.1),
                child: Image(
                    image: AssetImage("assets/subscription_side_menu.png")),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SubscriptionScreen())),
                child: Text("Subscriptions",
                    style: GoogleFonts.poppins(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Divider(
            color: Colors.black,
            // height: 30,
            thickness: 2,
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.13, right: screenWidth * 0.1),
                child: Image(image: AssetImage("assets/scanner_side_menu.png")),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => dashboardScreen(
                          currentIndex: 3,
                        ))),
                child: Text("Scan Qr",
                    style: GoogleFonts.poppins(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Divider(
            color: Colors.black,
            // height: 30,
            thickness: 2,
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.13, right: screenWidth * 0.1),
                child: Image(image: AssetImage("assets/profile_side_menu.png")),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => dashboardScreen(
                          currentIndex: 4,
                        ))),
                child: Text("Profile",
                    style: GoogleFonts.poppins(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Divider(
            color: Colors.black,
            // height: 30,
            thickness: 2,
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.13, right: screenWidth * 0.1),
                child:
                    Image(image: AssetImage("assets/promotion_side_menu.png")),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GraphScreen())),
                child: Text("Add promotion",
                    style: GoogleFonts.poppins(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Divider(
            color: Colors.black,
            // height: 30,
            thickness: 2,
          ),
          SizedBox(height: screenHeight * 0.05),
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.14),
            child: CustomContainer(
              callback: () {
                FirebaseAuth.instance.signOut();
                Get.to(() => loginScreen());
              },
              isimage: true,
              Image: "assets/carbon_logout.png",
              title: "   Logout",
              textAlign: TextAlign.center,
              width: screenWidth * 0.5,
            ),
          )
        ],
      ),
    );
  }
}
