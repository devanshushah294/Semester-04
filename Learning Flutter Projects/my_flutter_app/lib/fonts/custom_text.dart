import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      this.text,
      this.size,
      this.color,
      this.bgColor,
      this.textAlign})
      : super(key: key);
  final text;
  final size;
  final color;
  final bgColor;
  final textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: size ?? 10,
        color: color ?? Colors.black,
        backgroundColor: this.bgColor ?? Colors.transparent,
        fontWeight: FontWeight.bold,
      ),
      textAlign: textAlign ?? TextAlign.right,
    );
  }
}
