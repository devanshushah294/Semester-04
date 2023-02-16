import 'package:flutter/material.dart';
import 'package:my_flutter_app/matrimony_app/users.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("LoginPage here"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
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
                    margin: EdgeInsets.only(bottom: 20),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        labelText: "Name : ",
                        fillColor: Colors.grey,
                        focusColor: Colors.grey),
                    validator: (value) {
                      RegExp regex = RegExp("[a-zA-Z]"
                          // r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$',
                          );
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      } else if (!regex.hasMatch(passNonNullValue)) {
                        return ("Password should contain upper,lower,digit and Special character ");
                      }
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Password : ",
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                    ),
                    validator: (value) {
                      RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$',
                      );
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      } else if (passNonNullValue.length < 6) {
                        return ("Password Must be more than 5 characters");
                      } else if (!regex.hasMatch(passNonNullValue)) {
                        return ("Password should contain upper,lower,digit and Special character ");
                      }
                      return null;
                    },
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context)
                                ..pop()
                                ..pushReplacement(MaterialPageRoute(
                                    builder: (context) => Users()));
                            } else {
                              print("Enter the correct values");
                            }
                          },
                          child: Container(
                            child: Text(
                              "Submit",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
