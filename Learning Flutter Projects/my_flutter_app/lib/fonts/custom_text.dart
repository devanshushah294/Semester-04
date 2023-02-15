import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final fontWeight;

  final text;
  final size;
  final color;
  final bgColor;
  final textAlign;

  const CustomText(
      {Key? key,
      this.text,
      this.size,
      this.color,
      this.bgColor,
      this.textAlign,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: size,
        color: color ?? Colors.black,
        backgroundColor: this.bgColor ?? Colors.transparent,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
