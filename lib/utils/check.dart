// // ignore_for_file: dead_code
//
// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:time_link/utils/check.dart';
// import 'package:time_link/utils/custom_appbar.dart';
// import 'package:time_link/utils/custom_container.dart';
// import 'package:time_link/utils/custom_textbox.dart';
// import 'package:time_link/utils/my_drawer.dart';
// import 'package:get/get.dart';
//
// class CompletedorderScreen extends StatefulWidget {
//   const CompletedorderScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CompletedorderScreen> createState() => _CompletedorderScreenState();
// }
// List a = [
//   "Average order time per day/  weekly",
//   "Average order completion time per order",
//   "Number of orders on a particular day    / week ",
//   "Busiest periods",
//   "Order per day / week",
// ];
// class _CompletedorderScreenState extends State<CompletedorderScreen> {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         // automaticallyImplyLeading: false,
//         backgroundColor: Colors.transparent,
//         // bottomOpacity: 0,
//         leading: IconButton(
//           onPressed: () {
//             // Navigator.of(context).pop();
//           },
//           icon: GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Icon(Icons.arrow_back_ios_sharp)),
//         ),
//         elevation: 0,
//         flexibleSpace: customAppbar(
//           text: "Graphs & statistics",
//         ),
//       ),
//       // drawer: MyDrawer(),
//       body: Container(
//         padding: EdgeInsets.only(right: 25,left: 26),
//         child: ListView.builder(
//             padding: EdgeInsets.only(top: screenHeight*0.03),
//             itemCount: a.length,
//             scrollDirection: Axis.vertical,
//             itemBuilder: (context,index){
//               return Column(
//                 children: [
//                   CustomContainer(callback: () {
//
//                   },
//                     height: screenHeight*0.12,
//                     width: screenWidth,
//                     title: a[index],
//                   ),
//                   SizedBox(
//                     height: screenHeight*0.03,
//                   ),
//                 ],
//               );
//             }
//         ),
//       ),
//     );
//   }
// }
