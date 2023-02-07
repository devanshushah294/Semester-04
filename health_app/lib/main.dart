import 'package:flutter/material.dart';
import 'package:health_app/Home/daily_page.dart';
import 'package:health_app/Home/home_page.dart';
import 'package:health_app/Home/today_page.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      // home : HomePage()

      // home: Row(
      //   children: <Widget>[
      //     CircularPercentIndicator(
      //       radius: 60.0,
      //       lineWidth: 5.0,
      //       percent: 1.0,
      //       center: new Text("100%"),
      //       progressColor: Colors.green,
      //     )
      //   ],
      // ),
      // home: CircularPercentIndicator(
      //   radius: 60.0,
      //   lineWidth: 5.0,
      //   percent: 1.0,
      //   center: new Text("100%"),
      //   progressColor: Colors.green,
      // )
      // home: DailyPage()
      // home: TodayPage(),
      home: const SplashScreen(),
    );
  }
}
