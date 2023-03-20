import 'package:database_evaluation/database/my_database.dart';
import 'package:database_evaluation/database/students.dart';
import 'package:flutter/material.dart';

class AddEditPage extends StatefulWidget {
  AddEditPage({Key? key, required this.data}) : super(key: key);
  dynamic data;

  @override
  State<AddEditPage> createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  TextEditingController _nc = TextEditingController();
  TextEditingController _sc = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      _nc.text = widget.data["Name"];
      _sc.text = widget.data["sem"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _nc,
            decoration: InputDecoration(labelText: "Name"),
          ),
          TextFormField(
            controller: _sc,
            decoration: InputDecoration(labelText: "Sem"),
          ),
          TextButton(
              onPressed: () {
                Map map = {};
                map["Name"] = _nc.text;
                map["Sem"] = int.parse(_sc.text.toString());
                if (widget.data != null) {
                  MyDatabase().edit(map, widget.data["id"]);
                }
                else {
                  MyDatabase().add(map);
                }
                MyDatabase().edit(map, widget.data["id"]);
                Navigator.of(context)
                  ..pop
                  ..pushReplacement(
                    MaterialPageRoute(builder: (context) => Students(),),);
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
