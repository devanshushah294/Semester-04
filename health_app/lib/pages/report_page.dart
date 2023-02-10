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
        ),
      ),
    );
  }
}
