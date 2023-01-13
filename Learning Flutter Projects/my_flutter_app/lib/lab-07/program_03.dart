// Write a flutter code to divide the vertical space of the screen in 3 different equal parts with
// different colors.
import 'package:flutter/material.dart';

class Program03 extends StatelessWidget {
  const Program03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Program_03")),
        body: Column(children: [Expanded(child: Container(color: Colors.orange)),Expanded(child: Container(color: Colors.white,)),Expanded(child: Container(color: Colors.green))],)
    );
  }
}
