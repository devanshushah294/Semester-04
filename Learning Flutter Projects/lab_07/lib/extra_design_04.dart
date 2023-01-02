import "package:flutter/material.dart";
import 'package:lab_07/widgets/custom_column_widget.dart';

class ExtraDesign04 extends StatelessWidget {
  const ExtraDesign04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Extra design 04"),
        ),
        body: const CustomColumnWidget(parts: 3,color: [Colors.red,Colors. blue,Colors.green],));
  }
}
