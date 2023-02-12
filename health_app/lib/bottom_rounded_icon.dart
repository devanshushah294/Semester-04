import 'package:flutter/material.dart';
import 'package:health_app/custom_text.dart';

class BottomRoundedIcon extends StatelessWidget {
  final color;
  final height;
  final width;
  final insideHeight;
  final insideWidth;
  final text;
  final bottom;

  const BottomRoundedIcon({
    super.key,
    required this.height,
    required this.width,
    required this.insideHeight,
    required this.insideWidth,
    required this.text,
    required this.bottom,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(100),
          ),
        ),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CustomText(
                //   text: text,
                //   color: Colors.white,
                //   fontWeight: FontWeight.w900,
                // )
              ],
            ),
            height: insideHeight,
            width: insideWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(100)),
              border: Border(
                top: BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.white),
                left: BorderSide(color: Colors.white),
                right: BorderSide(color: Colors.white),
              ),
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
