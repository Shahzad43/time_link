import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customAppbar extends StatefulWidget {
  final String text;
  const customAppbar({Key? key,
    this.text = 'Sign Up'
  }) : super(key: key);

  @override
  State<customAppbar> createState() => _customAppbarState();
}

class _customAppbarState extends State<customAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 11),
      width: MediaQuery.of(context).size.width,
      height: 79,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffC59DF4),
              Color(0xffA150FF)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(100, 9, 197, 0.45),
                spreadRadius: 2,
                blurRadius: 5
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(widget.text,style: GoogleFonts.rubik(color:
          Color(0xffFFFFFF),fontWeight: FontWeight.w700,fontSize: 20),),
        ],
      ),
    );
  }
}
