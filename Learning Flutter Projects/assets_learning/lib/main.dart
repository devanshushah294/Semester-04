import 'package:assets_learning/test_page.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.purple,
        child: Homepage(),
      ),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

