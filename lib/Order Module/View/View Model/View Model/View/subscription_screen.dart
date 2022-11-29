import 'package:flutter/material.dart';
import 'package:time_link/Order%20Module/View/active_orders.dart';
import 'package:time_link/Order%20Module/View/View%20Model/View%20Model/View/bussiness_name%20_screen.dart';
import 'package:time_link/Login%20Module/View/login_screen.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:get/get.dart';
import 'package:time_link/utils/custom_textbox.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_rounded)),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        // bottomOpacity: 0,
        elevation: 0,
        flexibleSpace: customAppbar(
          text: "Subscription",
        ),
      ),
      body: Container(
        // width: screenWidth,
        // height: screenHeight,
        padding: EdgeInsets.only(left: screenWidth*0.08,right: screenWidth*0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight*0.04,
            ),
            Container(
              // padding: EdgeInsets.only(left: 20,right: 29),
              width: screenWidth,
              height: screenHeight*0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/subscription_frame.png"))
              ),
            ),
            SizedBox(
              height: screenHeight*0.047,
            ),
            CustomContainer(callback: () {
              Get.to(()=>BussinessnameScreen());
            },
            height: screenHeight*0.09,
              width: screenWidth,
              title: "Current subcription",
              txtsize: 20,
            ),
            SizedBox(
              height: screenHeight*0.047,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffA354FE),
                  // maxRadius: 5,
                  radius: 5,
                ),
                SizedBox(width: screenWidth*0.08,),
                Text("Upgrade subscription",style: GoogleFonts.rubik(
                  fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),)
              ],
            ),
            SizedBox(
              height: screenHeight*0.04,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffA354FE),
                  maxRadius: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 3.7,
                  ),

                ),
                SizedBox(width: screenWidth*0.08,),
                Text("Downgrade subscription",style: GoogleFonts.rubik(
                    fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),)
              ],
            )
            // Container(
            //   // padding: EdgeInsets.only(left: 17,right: 16),
            //   child: Text("The QR code will be automatically detected when you position it between the guide lines",
            //       style: GoogleFonts.montserrat(
            //           color: Color(0xff000000),
            //           fontWeight: FontWeight.w600,
            //           fontSize: 14),
            //       textAlign: TextAlign.center),
            // ),
          ],
        ),
      ),
    );
  }
}
