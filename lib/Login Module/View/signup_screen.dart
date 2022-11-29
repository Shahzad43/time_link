import 'package:flutter/material.dart';
import 'package:time_link/Dashboard%20Module/View/dashboard_screen.dart';
import 'package:time_link/Order%20Module/View/active_orders.dart';
import 'package:time_link/Login%20Module/View/login_screen.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:time_link/utils/custom_textbox.dart';
import 'package:get/get.dart';

class signupScreen extends StatelessWidget {
  const signupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        // bottomOpacity: 0,
        elevation: 0,
        flexibleSpace: customAppbar(

        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: screenWidth,
          // height: screenHeight,
          padding: EdgeInsets.only(left: 19,right: 19),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text("Bussiness name",
                      style: GoogleFonts.rubik(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              customTextbox(
                text: "Bussiness name",
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text("User-name/Phone number/Email",
                      style: GoogleFonts.rubik(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              customTextbox(
                text: "Write your name",
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text("Business password",
                      style: GoogleFonts.rubik(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              customTextbox(
                text: "Password",
                isPassword: true,
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text("Business password",
                      style: GoogleFonts.rubik(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              customTextbox(
                text: "Comfirm password",
                isPassword: true,
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text("Business phone number",
                      style: GoogleFonts.rubik(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              customTextbox(
                text: "Write your number",

              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text("Personal phone number",
                      style: GoogleFonts.rubik(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              customTextbox(
                text: "Write your number",
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text("Business email address",
                      style: GoogleFonts.rubik(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              customTextbox(
                text: "Write your email address",
              ),
              SizedBox(height: screenHeight*0.04,),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text("ABN or ACN",
                      style: GoogleFonts.rubik(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              customTextbox(
                text: "Write your ABN/ACN",
              ),
              SizedBox(height: screenHeight*0.045,),
              Container(
                padding: EdgeInsets.only(left: 5,right: 5),
                child: CustomContainer(callback: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => dashboardScreen()));
                },
                  title: "Sign Up",
                  width: screenWidth,
                ),
              ),
              SizedBox(height: screenHeight*0.045,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an Accoount? ",
                      style: GoogleFonts.rubik(
                          color: Color(0xff3C3C3C),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      textAlign: TextAlign.start),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(" Login",
                          style: GoogleFonts.rubik(
                            color: Color(0xff3C3C3C),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.start)),
                ],
              )




            ],
          ),
        ),
      ),
    );
  }
}
