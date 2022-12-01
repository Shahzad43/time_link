// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/Dashboard%20Module/View/dashboard_screen.dart';
import 'package:time_link/Login%20Module/View/signup_screen.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:time_link/utils/custom_textbox.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xffF5FAFF),
        body: isLoading?Center(child: CircularProgressIndicator(),): SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(right: 29, left: 26),
        width: screenWidth,
        height: screenHeight,
        color: Color(0xff65A6E7).withOpacity(0.002),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(
                top: screenHeight * 0.09, bottom: screenHeight * 0.05),
            height: screenHeight * 0.38,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login_pic.png"),
                    fit: BoxFit.fill)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to timelink",
                  style: GoogleFonts.rubik(
                      color: Color(0xff65A6E7),
                      fontWeight: FontWeight.w500,
                      fontSize: 28),
                  textAlign: TextAlign.center),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Text("Email Address",
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
            textEditingController: emailController,
          ),
          SizedBox(
            height: screenHeight * 0.034,
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Text("Password",
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
            isPassword: true,
            textEditingController: passwordController,
            text: "password",
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Forgot Password ?",
                  style: GoogleFonts.rubik(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                  textAlign: TextAlign.start),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          CustomContainer(
            title: "Login",
            width: screenWidth,
            height: 50,
            callback: () {
              print('adsda');
              signIn();

              // Get.to(() => dashboardScreen());
            },
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => signupScreen()));
                  },
                  child: Text("Sign Up",
                      style: GoogleFonts.rubik(
                        color: Color(0xff3C3C3C),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.start)),
            ],
          )
        ]),
      ),
    ));
  }

  Future signIn() async{
    // await FirebaseAuth.instance.signInWithEmailAndPassword(email:
    //     emailController.text.trim(),
    // password: passwordController.text.trim(),
    // );
if(emailController.text.isEmpty|| passwordController.text.isEmpty){
  Get.snackbar("Error", "Please fill all fields.",backgroundColor: Colors.black38,colorText: Colors.white,snackPosition: SnackPosition.TOP);
  return;
}
    print(emailController.text);
    print(passwordController.text);
setState(() {
  isLoading = true;
});
    try {
      UserCredential user =
      await FirebaseAuth.instance.signInWithEmailAndPassword(email:
      emailController.text.trim(),
        password: passwordController.text.trim(),

      );

      if (user.user!.uid == null) {
        print("Username or password is wrong");
      }
      else{
        Get.to(()=>dashboardScreen());
      }
    }catch(e){
      print("\n "+e.toString()+"\n");
      Get.snackbar("Error", "Email or Password is Incorrect",backgroundColor: Colors.black38,colorText: Colors.white,snackPosition: SnackPosition.TOP);
      setState(() {
        isLoading = false;
      });
    }

  }
}


