import 'package:flutter/material.dart';
import 'package:my_flutter_app/home_page.dart';
import "package:my_flutter_app/lab-08/check_page.dart";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CheckPage(),
    );
  }
}