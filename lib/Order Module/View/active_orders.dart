// ignore_for_file: dead_code

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/utils/check.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:time_link/Order%20Module/View/View%20Model/View/my_drawer.dart';
import 'package:get/get.dart';

class ActiveorderScreen extends StatefulWidget {
  const ActiveorderScreen({Key? key}) : super(key: key);

  @override
  State<ActiveorderScreen> createState() => _ActiveorderScreenState();
}
List a = [
  "Order #3467",
  "Order #3468",
  "Order #3469",
  "Order #3470",
  "Order #3471",
];
class _ActiveorderScreenState extends State<ActiveorderScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
            // Navigator.of(context).pop();
          },
          icon: Icon(Icons.menu),
        ),
        elevation: 0,
        flexibleSpace: customAppbar(
          text: "Active Orders",
        ),
      ),
      // drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.only(right: 25,left: 26),
        child: ListView.builder(
            padding: EdgeInsets.only(top: screenHeight*0.03),
            itemCount: a.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
              return Column(
                children: [
                  CustomContainer(callback: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return BackdropFilter(filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
                              child: Dialog(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(

                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        padding: EdgeInsets.only(
                                          top: screenHeight*0.028,
                                          left: screenWidth*0.06,
                                          right: screenWidth*0.06,
                                        ),
                                        height: screenHeight*0.42,
                                        width: screenWidth,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Please Enter the Order Number",
                                                style: GoogleFonts.rubik(
                                                    color: Color(0xff000000),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 28),
                                                textAlign: TextAlign.center),
                                            SizedBox(
                                              height: screenHeight*0.025,
                                            ),
                                            CustomContainer(callback: () {

                                            },
                                              title: "# 124567",
                                              txtsize: 14,
                                              width: screenWidth,
                                            ),
                                            SizedBox(
                                              height: screenHeight*0.025,
                                            ),
                                            CustomContainer(callback: () {

                                            },
                                              title: "Add fun facts",
                                              txtsize: 14,
                                              width: screenWidth,
                                            ),SizedBox(
                                              height: screenHeight*0.025,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
                                              child: CustomContainer(callback: () {

                                              },
                                                title: " Generate Qr Code",
                                                txtsize: 14,
                                                width: screenWidth,
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: screenHeight*0.4,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/mini_qrcode.png",),fit: BoxFit.fill)
                                              ),
                                              height: screenHeight*0.28,
                                              width: screenHeight*0.72,
                                              margin: EdgeInsets.only(
                                                top: screenHeight*0.019,
                                                bottom: screenHeight*0.015,
                                                right: screenWidth*0.12,
                                                left: screenWidth*0.12,
                                              ),
                                            ),
                                            SizedBox(
                                              height: screenHeight*0.018,
                                            ),
                                            CustomContainer(callback: () {
                                              Navigator.of(context).pop();
                                            },
                                              title: "Close",
                                              txtsize: 20,
                                              height: screenHeight*0.04,
                                              width: screenWidth*0.4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )));

                        }
                    );
                  },
                    height: screenHeight*0.12,
                    width: screenWidth,
                    title: a[index],
                  ),
                  SizedBox(
                    height: screenHeight*0.03,
                  ),
                ],
              );
            }
        ),
      ),
    );
  }
}
