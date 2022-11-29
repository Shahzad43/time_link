import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/Dashboard%20Module/View/dashboard_screen.dart';
import 'package:time_link/Home%20Module/View/View%20Model/View/add_promotion.dart';
import 'package:time_link/Home%20Module/View/View%20Model/View/graphs_and_statistics.dart';
import 'package:time_link/Home%20Module/View/View%20Model/View/map_screen.dart';
import 'package:time_link/Home%20Module/View/View%20Model/View/update_profile_screen.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

class profileScreen extends StatefulWidget {
  profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        // bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => dashboardScreen(currentIndex: 3),));
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),
        elevation: 0,
        flexibleSpace: customAppbar(
          text: "Profile",
        ),
      ),
        body: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              color: Color(0xffF5FAFF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // customAppbar(
                //   text: "Profile",
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 33),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/profile_pic.png"),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Madara uchiha",style: GoogleFonts.dmSans(
                            fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black
                          ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 170,
                            child: Text("Don’t tell anyone, but I’m obito uchiha.",style: GoogleFonts.dmSans(
                                fontSize: 12, fontWeight: FontWeight.w400,color: Colors.black
                            ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => updateprofileScreen()));
                  }),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.account_circle_outlined,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        Text("Profile",style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.4),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.circle_notifications_outlined,
                        size: 26,
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text("Subscriptions",style: GoogleFonts.dmSans(
                          fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black
                      ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.4),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.chat_bubble_outline_outlined,
                        size: 26,
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => dashboardScreen(currentIndex: 2,)));
                        },
                        child: Text("Support chat",style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.4),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (() {
                    Get.to(GraphScreen());
                  }),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.auto_graph_rounded,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        Text("Graphs & statistics",style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.4),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddPromotion()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.language_outlined,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        Text("Businesses around you",style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.4),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person_pin_outlined,
                        size: 26,
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text("Customer demographics",style: GoogleFonts.dmSans(
                          fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black
                      ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.4),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Get.to(MapScreen()),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.headset_mic_outlined ,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        Text("Help",style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.4),
                ),
              ],
            ),
            ),
        );
    }
}