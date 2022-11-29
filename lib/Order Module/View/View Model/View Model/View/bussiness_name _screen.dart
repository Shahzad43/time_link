import 'package:flutter/material.dart';
import 'package:time_link/Order%20Module/View/active_orders.dart';
import 'package:time_link/Login%20Module/View/login_screen.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:time_link/utils/custom_textbox.dart';

class BussinessnameScreen extends StatelessWidget {
  const BussinessnameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),
      // resizeToAvoidBottomInset: false,
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
          text: "Business name",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: screenWidth,
          // height: screenHeight,
           padding: EdgeInsets.only(left: screenWidth*0.02,right: screenWidth*0.02),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: screenHeight*0.04,
              // ),
              Container(
                // padding: EdgeInsets.only(left: 20,right: 29),
                width: screenWidth,
                height: screenHeight*0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/bussiness_frame.png"),fit: BoxFit.contain)
                ),
              ),
              // SizedBox(
              //   height: screenHeight*0.047,
              // ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/profile_pic.png"),
                maxRadius: 40,

              ),
              Text("Madara uchiha",style: GoogleFonts.poppins(
                  fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff000000)
              ),),
              SizedBox(
                height: screenHeight*0.048,
              ),
              Container(
                width: screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("    Business Name",style: GoogleFonts.rubik(
                        fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff000000)
                    ),),
                    SizedBox(
                      height: screenHeight*0.01,
                    ),
                    customTextbox(
                      text: "Clothes",
                      width: screenWidth,
                    ),
                    SizedBox(
                      height: screenHeight*0.05,
                    ),
                    Text("    Address",style: GoogleFonts.rubik(
                        fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff000000)
                    ),),
                    SizedBox(
                      height: screenHeight*0.01,
                    ),
                    customTextbox(
                      text: "Address",
                      width: screenWidth,
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
