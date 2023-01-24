import 'package:flutter/material.dart';
import 'package:my_flutter_app/Learning/learning_homepage.dart';
import 'package:my_flutter_app/lab-07/lab_07_home_page.dart';
import 'package:my_flutter_app/lab-08/lab_08_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(4.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Lab07HomePage(),
                        ));
                  },
                  child: Text("Lab - 07")),
              InkWell(onTap : () {Navigator.push(context,MaterialPageRoute(builder:(context)=>Lab08HomePage()));},child: Text("Lab - 08")),
              InkWell(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>LearningHomePage()));},child: Text("Learning")),
            ],
          ),
        ),
      ),
    );
  }
}