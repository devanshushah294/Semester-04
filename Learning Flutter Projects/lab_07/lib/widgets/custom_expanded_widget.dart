import 'package:flutter/material.dart';

class CustomExpandedWidget extends StatelessWidget {
  final color;
  final flex;
  const CustomExpandedWidget({Key? key, this.color, int? this.flex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex??1,
        child: Container(
          color: color ?? Colors.transparent,
        ));
  }
}
