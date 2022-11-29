import 'package:flutter/material.dart';
import 'package:time_link/Order%20Module/View/active_orders.dart';
import 'package:time_link/Order%20Module/View/completed_orders.dart';
import 'package:time_link/Home%20Module/View/profile_screen.dart';
import 'package:time_link/Home%20Module/View/qrcode_screen.dart';
import 'package:time_link/utils/check.dart';
import 'package:time_link/Order%20Module/View/View%20Model/View/my_drawer.dart';
import 'package:get/get.dart';

// import '../../utils/bottumbar.dart';

class dashboardScreen extends StatefulWidget {
  dashboardScreen({Key? key,  this.currentIndex=0}) : super(key: key);
int currentIndex;
  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}
class _dashboardScreenState extends State<dashboardScreen> {
  final tabs = [
    ActiveorderScreen(),
    CompletedorderScreen(),
    ActiveorderScreen(),
    qrcodeScreen(),
    profileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffF5FAFF),
        body: tabs[widget.currentIndex],
        drawer: const MyDrawer(),

        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              currentIndex: widget.currentIndex,
              elevation: 2,
              backgroundColor: Colors.white,
              // fixedColor: Colors.blue,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              selectedItemColor: const Color.fromARGB(255, 150, 81, 197),
              unselectedItemColor: const Color(0xff9B9B9B),
              type: BottomNavigationBarType.fixed,
              iconSize: 35,
              onTap: (index) {
                setState(() {
                  widget.currentIndex = index;
                  // if(
                  // widget.currentIndex!=2
                  // ){
                  //   widget.currentIndex=index;
                  // }
                });
              },
              selectedLabelStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xff9B9B9B,
                  )),
              unselectedLabelStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(
                    0xff9B9B9B,
                  )),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.delivery_dining_outlined),
                  label: "Completed Order",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.abc_sharp,color: Colors.white),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.qr_code_scanner_outlined),
                  label: "Scan Qr",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),

              ],
            ),

            // Positioned(
            //   top: 0,
            //   right: MediaQuery.of(context).size.width/2.4,
            //   child: FloatingActionButton(
            //       elevation: 0.0,
            //       child: new Icon(Icons.add),
            //       backgroundColor: Colors.purple,
            //       onPressed: (){}
            //   ),
            // )
          ],
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Container(
          height: 65,
            width: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [
                Color(0xffC59DF4),
          Color(0xffA150FF)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        ),
            child: Icon(Icons.add)),
        // backgroundColor: Color(0xffC297F5),
        onPressed: (){
          widget.currentIndex=2;
          // // Get.to(()=> dashboardScreen());4
          // Get.to(dashboardScreen());
          // // print(widget.currentIndex);4
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => dashboardScreen(currentIndex: 0,)));

          // setState(() {
          //   widget.currentIndex==0;
          //   Get.to(() => dashboardScreen());
          // });

        },
      ),
      // floatingActionButton: FloatingActionButton(onPressed: onPressed),
        );
    }
}
// void _onItemTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//   });
// }