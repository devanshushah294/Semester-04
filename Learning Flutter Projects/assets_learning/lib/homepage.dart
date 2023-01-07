import 'package:assets_learning/widgets/roboto_bold_text.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Metromony app"),
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
                    color: Colors.white70,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Image.asset(
                            "assets/images/logo.png",
                            width: 250,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(top: 10, right: 70),
                          child: const RobotoBoldText(
                            text: "Unlock your love",
                            size: 25.0,
                            color: Colors.deepOrangeAccent,
                            bgColor: Colors.transparent,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 100,),
                                width: 150,
                                height: 100,
                                transform: Matrix4.rotationZ(-1*15*3.14/180),
                                child: Column(children: [],),
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
