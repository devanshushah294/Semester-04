import 'package:flutter/material.dart';
import 'package:my_first_project/pages/detail_screen.dart';
import 'package:my_first_project/pages/home_screen.dart';
import 'package:my_first_project/pages/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.purple,
        child: Layout(),
      ),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}
