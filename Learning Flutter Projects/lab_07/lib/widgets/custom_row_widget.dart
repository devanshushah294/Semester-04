import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({Key? key, required this.parts, required this.color})
      : super(key: key);
  final parts;
  final color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: getExpantion(parts, color),
    ));
  }

  List<Widget> getExpantion(int parts, dynamic color) {
    List<Widget> widget = [];
    for (int i = 0; i < parts; i++) {
      widget.add(Expanded(child: Container(color: color[i])));
    }
    return widget;
  }
}
