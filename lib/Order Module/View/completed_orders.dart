// ignore_for_file: dead_code

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/utils/check.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:time_link/utils/custom_container.dart';
import 'package:time_link/utils/custom_textbox.dart';
import 'package:time_link/Order%20Module/View/View%20Model/View/my_drawer.dart';
import 'package:get/get.dart';

class CompletedorderScreen extends StatefulWidget {
  const CompletedorderScreen({Key? key}) : super(key: key);

  @override
  State<CompletedorderScreen> createState() => _CompletedorderScreenState();
}
List a = [
  "Order #3471",
  "Order #3472",
  "Order #3473",
  "Order #3474",
  "Order #3475",
];
class _CompletedorderScreenState extends State<CompletedorderScreen> {
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
        // bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),
        elevation: 0,
        flexibleSpace: customAppbar(
          text: "Completed Orders",
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
                                            top: screenHeight*0.030,
                                            left: screenWidth*0.06,
                                            right: screenWidth*0.06,
                                            bottom: screenHeight*0.018
                                        ),
                                        height: screenHeight*0.6,
                                        width: screenWidth,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            CustomContainer(callback: () {

                                            },
                                              title: "Offer names",
                                              txtsize: 14,
                                              width: screenWidth,
                                            ),
                                            SizedBox(
                                              height: screenHeight*0.05,
                                            ),
                                            CustomContainer(callback: () {

                                            },
                                              title: "Offer valiclity",
                                              txtsize: 14,
                                              width: screenWidth,
                                            ),SizedBox(
                                              height: screenHeight*0.05,
                                            ),

                                            CustomContainer(callback: () {

                                            },
                                              title: "How much discount offered",
                                              txtsize: 14,
                                              width: screenWidth,
                                            ),
                                            SizedBox(height: screenHeight*0.035,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text("Detail",style: GoogleFonts.rubik(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14
                                                ),),
                                              ],
                                            ),
                                            SizedBox(height: screenHeight*0.01,),
                                            customTextbox(
                                              maxLine: 3,
                                              text: "",
                                              height: screenHeight*0.1,
                                            ),
                                            SizedBox(height: screenHeight*0.03,),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: screenWidth*0.14),
                                              child: CustomContainer(
                                                callback: () {
                                                  Navigator.of(context).pop();
                                                },
                                                Image: "assets/carbon_logout.png",
                                                height: screenHeight*0.05,
                                                title: "Submit",
                                                textAlign: TextAlign.center,
                                                width: screenWidth*0.5,
                                              ),
                                            )


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
