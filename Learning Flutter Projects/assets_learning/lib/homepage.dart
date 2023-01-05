import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Metromony app"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 9,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "assets/images/bg_matrimony_prelogin.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.white60,
                  ),
                  Container()
                ],
              )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                child: Center(child: Text("Login", style: TextStyle(fontFamily: "Roboto",color: Colors.white, fontWeight:FontWeight.bold),)),
                color: Colors.green,
              )),
              Expanded(
                  child: Container(
                child: Center(child: Text("Sign Up -> ${Icons.arrow_forward_rounded}", style: TextStyle(fontFamily: "Roboto",color: Colors.white, fontWeight:FontWeight.bold))),
                color: Colors.black,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
