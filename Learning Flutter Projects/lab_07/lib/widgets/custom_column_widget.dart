import 'package:flutter/material.dart';

class CustomColumnWidget extends StatelessWidget {
  const CustomColumnWidget(
      {Key? key, @required this.parts, List<dynamic>?this.color, List<dynamic>?this.flex})
      : super(key: key);
  final flex;
  final parts;
  final color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: getExpantion(parts, color, flex),
    );
  }

  List<Widget> getExpantion(int parts, dynamic color, dynamic flex) {
    List<Widget> widget = [];
    for (int i = 0; i < parts; i++) {
      widget.add(Expanded(
          flex: flex[i] ?? 1,
          child: Container(color: color[i] ?? Colors.transparent)));
    }
    return widget;
  }
}
