import 'package:flutter/material.dart';
import 'package:my_flutter_app/lab-07/extra_design_02.dart';
import 'package:my_flutter_app/lab-07/extra_design_03.dart';
import 'package:my_flutter_app/lab-07/extra_design_04.dart';
import 'package:my_flutter_app/lab-07/program_03.dart';
import 'package:my_flutter_app/lab-07/program_04.dart';

import 'extra_design_01.dart';

class Lab07HomePage extends StatelessWidget {
  const Lab07HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab - 07"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Program03()));
                },
                child: Text("Program - 03")),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Program04()));
                },
                child: const Text("Program - 04")),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExtraDesign01()));
                },
                child: const Text("Extra design 01")),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExtraDesign02()));
                },
                child: Text("Extra Design 02")),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExtraDesign03()));
                },
                child: Text("Extra Design 03")),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExtraDesign04()));
                },
                child: const Text("Extra design 04")),
          ],
        ),
      ),
    );
  }
}
