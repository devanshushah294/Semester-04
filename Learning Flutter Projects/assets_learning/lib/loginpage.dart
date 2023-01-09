import 'package:assets_learning/widgets/roboto_bold_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LoginPage here"),
        ),
        body: Container(
          padding:EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: RobotoBoldText(
                        text: "Enter Name : ",
                        size: 15.0,
                        textAlign: TextAlign.left,
                      )),
                  TextFormField(),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: RobotoBoldText(
                        text: "Enter Password : ",
                        size: 15.0,
                        textAlign: TextAlign.left,
                      )),
                  TextFormField(),

                ],
              ),
            ),
          ),
        ));
  }
}
