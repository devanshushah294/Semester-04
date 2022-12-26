import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Container(
        width: 300,
        height: 200,
        // color: Colors.deepOrange,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.white, Colors.purple]),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              "Hello World from HomePage of Flutter",
            ),
            width: 200,
            // color: Colors.blue,
          ),
        ),
      ),
    ));
  }
}
