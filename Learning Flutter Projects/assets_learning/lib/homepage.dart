import 'package:assets_learning/widgets/roboto_bold_text.dart';
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
                  Container(
                    child: Column(
                      children: [
                        Container(child: Image.asset("assets/images/logo.png",width: 250,)),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: RobotoBoldText(
                            text: "Building future bharat for happy metrimoney ",
                            size: 25.0,
                            color: Colors.black,
                            bgColor: Colors.transparent,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(top: 30),
                  )
                ],
              )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                child: Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
                color: Colors.green,
              )),
              Expanded(
                  child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up \u2794",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                color: Colors.black,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
