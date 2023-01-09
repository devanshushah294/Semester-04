import 'package:assets_learning/widgets/roboto_bold_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("LoginPage here"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(margin:EdgeInsets.only(bottom: 20),child: Image.asset("assets/images/logo.png")),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Name : ",
                        fillColor: Colors.grey,
                        focusColor: Colors.grey),
                    // validator: (value){if(value.isEmpty )},
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password : ",
                        fillColor: Colors.grey,
                        focusColor: Colors.grey),
                  ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(onPressed: (){}, child: Container(child: Text("Submit", style: TextStyle(fontSize: 25,color: Colors.white),))),
                    ),
                  ),
                )
                ],
              ),
            ),
          ),
        ));
  }
}
