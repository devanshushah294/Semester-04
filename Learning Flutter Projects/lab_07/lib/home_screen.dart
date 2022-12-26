import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text("Lab - 07")),
      body: Container(
        child: Row(children: [Container(color: Colors.orange,width: 100,height: 20),Container(color: Colors.white,width: 100,height: 20),Container(color: Colors.green,width: 100,height: 20)],),
      ),
    );
  }
}
