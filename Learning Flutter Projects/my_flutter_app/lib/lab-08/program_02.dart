import 'package:flutter/material.dart';
import 'package:my_flutter_app/lab-08/widgets/battambang_text.dart';

class Program02 extends StatelessWidget {
  const Program02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Program - 02"),),
      body: BattambangText(text: "Hello World"),
    );
  }
}
