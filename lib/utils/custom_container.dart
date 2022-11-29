import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatefulWidget {
  final title;
  final double width;
  final double height;
  final Color txtcolor;
  final double txtsize;
  final Image;
  final TextAlign textAlign;
  final VoidCallback callback;
  final bool isimage;
   int padding;
  CustomContainer({
    Key? key,
    this.title = "",
    this.width= 200,
    this.Image,
    this.isimage=false,
    this.height= 50,
    this.txtsize= 18,
    required this.callback,
    this.txtcolor=Colors.white,
    this.textAlign = TextAlign.start,
    this.padding=0,
    // this.padding = AnimatedPadding(padding: EdgeInsets.all(10), duration: Duration(milliseconds: 300))

  }) : super(key: key);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}
class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:widget.callback,
      child: Container(
        // padding:widget.padding,
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffC59DF4),
                Color(0xffA150FF)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(100, 9, 197, 0.45),
                // spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ]
        ),
        child: Center(
          child: widget.isimage?Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.Image),
              Text(
                widget.title,
                textAlign: widget.textAlign,
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w500,
                  fontSize: widget.txtsize,
                  color: widget.txtcolor,

                ),

              ),
            ],
          ):
          Text(
            widget.title,
            textAlign: widget.textAlign,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              fontSize: widget.txtsize,
              color: widget.txtcolor,

            ),

          ),
        ),
      ),
    );
  }
}

void callback() {
  callback();
}