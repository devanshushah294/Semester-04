import 'package:flutter/material.dart';

class RobotoBoldText extends StatelessWidget {
  const RobotoBoldText(
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
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: size ?? 10,
        color: color ?? Colors.black,
        backgroundColor: this.bgColor ?? Colors.transparent,
        fontWeight: FontWeight.bold,

      ),
      textAlign: textAlign??TextAlign.right,
    );
  }
}
