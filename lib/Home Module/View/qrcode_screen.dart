import 'package:flutter/material.dart';
import 'package:time_link/Order%20Module/View/active_orders.dart';
import 'package:time_link/Login%20Module/View/login_screen.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:time_link/utils/custom_textbox.dart';

class qrcodeScreen extends StatelessWidget {
  const qrcodeScreen({Key? key}) : super(key: key);

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
          text: "Add Device",
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
                height: screenHeight*0.04,
              ),
              Container(
                padding: EdgeInsets.only(left: 38,right: 45),
                child: Text("Scan the QR code of the device",
                    style: GoogleFonts.montserrat(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: screenHeight*0.04,
              ),
              Container(
                padding: EdgeInsets.only(left: 20,right: 29),
                width: screenWidth,
                height: screenHeight*0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/qrcode.png"))
                ),
              ),
              SizedBox(
                height: screenHeight*0.047,
              ),
              Container(
                // padding: EdgeInsets.only(left: 17,right: 16),
                child: Text("The QR code will be automatically detected when you position it between the guide lines",
                    style: GoogleFonts.montserrat(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
