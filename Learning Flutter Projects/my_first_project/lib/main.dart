import 'package:flutter/material.dart';
import 'package:my_first_project/detail_screen.dart';
import 'package:my_first_project/home_screen.dart';
import 'package:my_first_project/layout.dart';

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
        child: HomeScreen(),
      ),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}
