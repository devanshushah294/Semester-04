import 'package:flutter/material.dart';

class BattambangText extends StatelessWidget {
  const BattambangText({Key? key, this.text}) : super(key: key);
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "Battambang"),
    );
  }
}
