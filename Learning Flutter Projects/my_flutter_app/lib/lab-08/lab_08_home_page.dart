import 'package:flutter/material.dart';
import 'package:my_flutter_app/lab-08/program_01.dart';
import 'package:my_flutter_app/lab-08/program_02.dart';

class Lab08HomePage extends StatelessWidget {
  const Lab08HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lab - 08")),
      body: Column(children: [
        InkWell(onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Program01(),));},
          child: Text("Program - 01"),
        ),InkWell(onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Program02(),));},
          child: Text("Program - 02"),
        )
      ]),
    );
  }
}
