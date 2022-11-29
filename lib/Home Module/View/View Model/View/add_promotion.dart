import 'package:flutter/material.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:time_link/utils/custom_container.dart';

class AddPromotion extends StatelessWidget {
  const AddPromotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        // bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pop();
          },
          icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_sharp)),
        ),
        elevation: 0,
        flexibleSpace: customAppbar(
          text: "Add Promotion",
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 25,left: 26),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight*0.03,
            ),
            GestureDetector(
              onTap: () {

              },
              child: CustomContainer(callback: () {

              },
                height: screenHeight*0.12,
                width: screenWidth,
                title: "Average order time per day/  weekly",
                txtsize: 20,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: screenHeight*0.03,
            ),
            CustomContainer(callback: () {

            },
              height: screenHeight*0.12,
              width: screenWidth,
              title: "Average order completion time per order",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: screenHeight*0.03,
            ),
            CustomContainer(callback: () {

            },
              height: screenHeight*0.12,
              width: screenWidth,
              title: "Number of orders on a particular day    / week ",
              textAlign: TextAlign.center,

            ),
            SizedBox(
              height: screenHeight*0.03,
            ),
            CustomContainer(callback: () {

            },
              height: screenHeight*0.12,
              width: screenWidth,
              title: "Busiest periods",
            ),
            SizedBox(
              height: screenHeight*0.03,
            ),
            CustomContainer(callback: () {

            },
              height: screenHeight*0.12,
              width: screenWidth,
              title: "Order per day / week",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
