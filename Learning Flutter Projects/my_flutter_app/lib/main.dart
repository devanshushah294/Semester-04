import 'package:flutter/material.dart';
import 'package:my_flutter_app/home_page.dart';
import "package:my_flutter_app/lab-08/check_page.dart";
import 'package:my_flutter_app/matrimony_app/pre_login_page.dart';
import 'package:my_flutter_app/matrimony_app/users.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // home: PreLoginPage(),
      // home: Corousel(),
    );
  }
}
