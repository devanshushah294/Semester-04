import 'package:flutter/material.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/signup_and_update_page_using_database.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/login_page_using_database.dart';
import 'package:my_flutter_app/fonts/custom_text.dart';

class PreLoginPageDatabase extends StatelessWidget {
  const PreLoginPageDatabase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Metromony app using database"),
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
                        builder: (context) => LoginPageUsingDatabase(),
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
                        builder: (context) => SignupAndUpdatePageUsingDatabase(
                          userModel: null,
                        ),
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
