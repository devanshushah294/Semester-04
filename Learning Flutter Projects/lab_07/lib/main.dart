import 'package:flutter/material.dart';
import 'package:lab_07/home_screen.dart';
import 'package:lab_07/program_02.dart';
import 'package:lab_07/program_03.dart';
import 'package:lab_07/program_04.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Program04(),
    );
  }
}