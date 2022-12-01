import 'package:flutter/material.dart';
import 'package:time_link/Dashboard%20Module/View/dashboard_screen.dart';
import 'package:time_link/Order%20Module/View/active_orders.dart';
import 'package:time_link/Home%20Module/View/profile_screen.dart';
import 'package:time_link/Login%20Module/View/login_screen.dart';
import 'package:time_link/Services/UserModel/signup_controller.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:get/get.dart';
import 'package:time_link/utils/custom_textbox.dart';

class updateprofileScreen extends StatelessWidget {
   updateprofileScreen({Key? key}) : super(key: key);
  final controller = Get.put(SignUp());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pop();
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
          text: "Update",
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
                height: screenHeight * 0.01,
              ),
              CircleAvatar(
                // backgroundColor: Color.fromRGBO(255, 255, 255, 0.4),
                backgroundColor: Colors.blue,
                radius: screenHeight * 0.06,
                backgroundImage: AssetImage("assets/profile_pic.png"),
              ),
              SizedBox(
                height: screenHeight * 0.002,
              ),
              Text("Madara uchiha",
                  style: GoogleFonts.rubik(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  textAlign: TextAlign.center),
              SizedBox(
                height: screenHeight * 0.02,
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
                textEditingController: controller.bussinessNameController.value,
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
                textEditingController: controller.usernameController.value,
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
                textEditingController: controller.passwordController.value,
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
                textEditingController: controller.confirmPasswordController.value,

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
                text: "Write your Bussiness Phone no",
                textEditingController: controller.bussinesphonenoController.value,
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
                text: "Write your Personal Phone no",
                textEditingController: controller.personalphoenoController.value,

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
                textEditingController: controller.emailController.value,
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
                textEditingController: controller.abnacnController.value,
              ),
              SizedBox(height: screenHeight*0.045,),
              Container(
                padding: EdgeInsets.only(left: 5,right: 5),
                child: CustomContainer(callback: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => dashboardScreen()));
                  if(controller.bussinessNameController.value.text.isEmpty || controller.personalphoenoController.value.text.isEmpty
                      || controller.abnacnController.value.text.isEmpty
                      || controller.emailController.value.text.isEmpty ||
                      controller.passwordController.value.text.isEmpty ||
                      controller.usernameController.value.text.isEmpty ||
                      controller.bussinesphonenoController.value.text.isEmpty
                  )
                  {
                    Get.snackbar("Error", "Please fill all Fields",backgroundColor: Colors.black38,colorText: Colors.white,snackPosition: SnackPosition.TOP);
                  }
                  else {
                    if(controller.passwordController.value.text !=controller.confirmPasswordController.value.text){
                      Get.snackbar("Error", "Password not match",backgroundColor: Colors.black38,colorText: Colors.white,snackPosition: SnackPosition.TOP);

                    }else{
                      controller.onUpdate();
                    }

                  }

                },
                  title: "Update",
                  width: screenWidth*0.6,
                ),
              ),
              SizedBox(height: screenHeight*0.01,),



            ],
          ),
        ),
      ),
    );
  }
}
