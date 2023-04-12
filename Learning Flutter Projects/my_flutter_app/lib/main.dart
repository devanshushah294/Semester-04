import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/pre_login_page_database.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/users_page_database.dart';
import 'package:my_flutter_app/home_page.dart';
import "package:my_flutter_app/lab-08/check_page.dart";

Future<void> main() async {
  // final cameras = await availableCameras();
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
      // home: PreLoginPageDatabase(),
      // home: PreLoginPage(),
      // home: Corousel(),
      home: HomePage(),
    );
  }
}
