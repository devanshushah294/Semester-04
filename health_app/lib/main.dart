import 'package:flutter/material.dart';
import 'package:health_app/Home/daily_page.dart';
import 'package:health_app/Home/home_page.dart';
import 'package:health_app/Home/today_page.dart';
import 'package:health_app/bottom_rounded_icon.dart';
import 'package:health_app/splash_screen.dart';

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
      // home : HomePage(),
      // home: HomePage(),
      // home: TodayPage(),
      home:SplashScreen(),
      // home: const SplashScreen(),
    );
  }
}
