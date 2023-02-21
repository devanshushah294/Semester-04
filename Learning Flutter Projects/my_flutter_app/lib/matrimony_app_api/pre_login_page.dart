import 'package:flutter/material.dart';
import 'package:my_flutter_app/fonts/custom_text.dart';
import 'package:my_flutter_app/matrimony_app_api/sign_up_update_page.dart';

import 'login_page.dart';

class PreLoginPageApi extends StatelessWidget {
  const PreLoginPageApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
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
                          child: const CustomText(
                            text: "INDIA'S\n MOST  TRUSTED\nMETRIMONY  APP",
                            size: 25.0,
                            color: Colors.black,
                            bgColor: Colors.transparent,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpAndUpdatePage(userModel: null),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
