import 'package:flutter/material.dart';

class CustomExpandedWidget extends StatelessWidget {
  final color;
  final flex;
  final child;
  const CustomExpandedWidget({Key? key, this.color, int? this.flex, dynamic?this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex??1,
        child: Container(
          color: color ?? Colors.transparent,
          child: child??Container(),
        ));
  }
}