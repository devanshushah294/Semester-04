import 'package:assets_learning/login_page.dart';
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
                    color: Colors.white54,
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
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 10),
                            child: const RobotoBoldText(
                              text: "INDIA'S\n MOST  TRUSTED\nMETRIMONY  APP",
                              size: 25.0,
                              color: Colors.black,
                              bgColor: Colors.transparent,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        //tilted extra images
                        // Container(
                        //   margin: const EdgeInsets.only(
                        //     top: 100,right:250,
                        //   ),
                        //   width: 100,
                        //   transform: Matrix4.rotationZ(-1 * 15 * 3.14 / 180),
                        //   child: Column(
                        //     children: [
                        //       Image.asset("assets/images/couples/couple1.webp")
                        //     ],
                        //   ),
                        //   color: Colors.orangeAccent,
                        // ),
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
                  child: InkWell(
                onTap: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return LoginPage();
                  // }));
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginPage()));
                },
                child: Container(
                  color: Colors.green,
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              )),
              Expanded(
                  child: Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Sign Up \u2794",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
}
