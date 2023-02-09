import 'dart:async';

import 'package:flutter/material.dart';
import 'package:health_app/Home/home_page.dart';
import 'package:health_app/pages/all_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  super.initState();
  Timer(const Duration(seconds: 5), () {
  Navigator.pushReplacement(
  context, MaterialPageRoute(builder: (context) => AllPages()));
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.webp"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: const Text(
                  "Health App",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 34),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.indigo[800]);
  }
}
