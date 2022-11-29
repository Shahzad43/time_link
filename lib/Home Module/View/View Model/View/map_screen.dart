import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_link/Dashboard%20Module/View/dashboard_screen.dart';
import 'package:time_link/Home%20Module/View/View%20Model/View/add_promotion.dart';
import 'package:time_link/Home%20Module/View/View%20Model/View/graphs_and_statistics.dart';
import 'package:time_link/Home%20Module/View/View%20Model/View/update_profile_screen.dart';
import 'package:time_link/utils/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapScreen extends StatefulWidget {
  MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),
        elevation: 0,
        flexibleSpace: customAppbar(
          text: "Businesses around you",
        ),
      ),
      body: GoogleMap(initialCameraPosition:  CameraPosition(
        target: LatLng(0, 0),
        zoom: 2,
      ),),

    );
  }
}