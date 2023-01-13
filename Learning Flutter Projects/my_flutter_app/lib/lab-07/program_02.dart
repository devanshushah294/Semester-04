import 'package:flutter/material.dart';
class Program02 extends StatelessWidget {
  const Program02({Key? key}) : super(key: key);
  // Write a flutter code to divide horizontal space of screen in 3 different equal parts with different
  // colors.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Program_02")),
        body:Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children :[Expanded(child: Container(color: Colors.orange,)),Expanded(child: Container(color: Colors.white,)),Expanded(child: Container(color: Colors.green,))]),)
    );
  }
}
