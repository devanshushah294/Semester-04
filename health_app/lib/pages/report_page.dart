import 'package:flutter/material.dart';
import 'package:health_app/custom_text.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Report",
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w800,
        ),
        // backgroundColor: Color.fromRGBO(9, 30, 77, 1),
        backgroundColor: Color.fromRGBO(8, 22, 59, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(9, 30, 77, 1),
              Color.fromRGBO(22, 82, 155, 1)
            ],
          ),
        ),
      ),
    );
  }
}
