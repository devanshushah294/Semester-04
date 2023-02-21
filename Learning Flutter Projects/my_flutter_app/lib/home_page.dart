import 'package:flutter/material.dart';
import 'package:my_flutter_app/Learning/learning_homepage.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/pre_login_page_database.dart';
import 'package:my_flutter_app/lab-07/lab_07_home_page.dart';
import 'package:my_flutter_app/lab-08/lab_08_home_page.dart';

import 'matrimony_app_api/pre_login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lab07HomePage(),
                    ),
                  );
                },
                child: Card(child: Text("Lab - 07")),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lab08HomePage(),
                    ),
                  );
                },
                child: Card(child: Text("Lab - 08")),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LearningHomePage(),
                    ),
                  );
                },
                child: Card(child: Text("Learning")),
              ),
              InkWell(
                child: Card(child: Text("Matromany app")),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PreLoginPageApi(),
                    ),
                  );
                },
              ),
              InkWell(
                child: Card(child: Text("Matromany app using Database")),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PreLoginPageDatabase(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
