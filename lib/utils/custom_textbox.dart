import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customTextbox extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final bool isPassword;
  final TextEditingController? textEditingController;
  final bool isNumber;
  final double textSize;
  final int maxLine;

  TextEditingController? controller;
  customTextbox({Key? key,
    this.width= 342,
    this.textEditingController,
    this.isPassword = false,
    this.isNumber = false,
    this.text= "example@gmail.com",
    this.textSize= 14,
    this.height= 50,
    this.maxLine = 1,

  }) : super(key: key);

  @override
  State<customTextbox> createState() => _customTextboxState();
}

class _customTextboxState extends State<customTextbox> {
  bool isObscure= false;
  @override
  void initState() {
    super.initState();
    print(widget.isPassword == true);
    setState(() {
      isObscure = widget.isPassword == true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),

      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffC59DF4),
            Color(0xffA150FF)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(100, 9, 197, 0.45),
              spreadRadius: 1,
              blurRadius: 5,
              // offset: Offset(0, 3),
            )
          ]

      ),
      child: TextFormField(
        maxLines: widget.maxLine,
        controller: widget.textEditingController,
        obscureText: isObscure,
        cursorColor:  Colors.purple.withOpacity(0.2),
        style: GoogleFonts.rubik(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: widget.textSize,


        ),

        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          // prefixIcon: Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage('assets/search_icon.png'))
          //   ),
          // ),
          // prefixIcon: Icon(Icons.search,color: Color(0xff23AA49)),
          border: InputBorder.none,
          disabledBorder: InputBorder.none,
          suffixIcon: widget.isPassword
              ? GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(
                isObscure? Icons.visibility : Icons.visibility_off,
                color: Color(0xffFFFFFF),
                size: 20,
              )
          ): SizedBox(),

          hintText: widget.text,

          hintStyle: GoogleFonts.dmSans(

              color: Color(0xffFFFFFF)
              ,fontSize: widget.textSize,
          fontWeight: FontWeight.w400
          ),

        ),
      ),
    );
  }
}