import 'package:employee_project/api/api_functions.dart';
import 'package:employee_project/api/employees.dart';
import 'package:employee_project/api/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddEditPage extends StatefulWidget {
  AddEditPage({this.em});

  dynamic? em;

  @override
  State<AddEditPage> createState() {
    return _AddEditPageState();
  }
}

class _AddEditPageState extends State<AddEditPage> {
  @override
  void initState() {
    super.initState();
    if (widget.em != null) {
      _nc.text = widget.em["Name"];
      _sc.text = widget.em["Salary"];
    }
  }

  TextEditingController _nc = TextEditingController();
  TextEditingController _sc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          children: [
            TextFormField(
              controller: _nc,
              decoration: InputDecoration(labelText: "Enter Name"),
            ),
            TextFormField(
              controller: _sc,
              decoration: InputDecoration(labelText: "Enter salary"),
            ),
            TextButton(
                onPressed: () {
                  Map<String, String> map = {};
                  map["Name"] = _nc.text;
                  map["Salary"] = _sc.text;
                  // UserModel model = UserModel();
                  // model.name = _nc.text;
                  // model.gender = _genderController.text;
                  // model.image = _imageController.text;
                  // model.salary = _sc.text;
                  if (widget.em == null) {
                    // Map map = model.getAddMap();
                    ApiFunctions().add(map);
                  } else {
                    map["id"] = widget.em["id"];
                    // Map map = model.getEditMap(widget.em["id"]);
                    ApiFunctions().editById(map);
                  }
                  Navigator.of(context)
                    ..pop()
                    ..pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return Employees();
                        },
                      ),
                    );
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
