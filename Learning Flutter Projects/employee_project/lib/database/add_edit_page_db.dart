import 'package:employee_project/database/city_model.dart';
import 'package:employee_project/database/employees_db.dart';
import 'package:employee_project/database/my_database.dart';
import 'package:flutter/material.dart';

class AddEditPageDB extends StatefulWidget {
  AddEditPageDB({Key? key, this.data}) : super(key: key);
  dynamic data;

  @override
  State<AddEditPageDB> createState() => _AddEditPageDBState();
}

class _AddEditPageDBState extends State<AddEditPageDB> {
  late CityModel _ddSelected;
  bool isCityListGet = true;

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      _nc.text = widget.data!["Name"].toString();
      _sc.text = widget.data!["Salary"].toString();
    }
  }

  TextEditingController _nc = TextEditingController();
  TextEditingController _sc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add edit page"),
      ),
      body: Column(
        children: [
          TextFormField(
              controller: _nc,
              decoration: InputDecoration(labelText: "Enter Name")),
          FutureBuilder<List<CityModel>>(
            builder: (context, snapshot) {
              if (snapshot.data != null && snapshot.hasData) {
                if (isCityListGet) {
                  if (widget.data == null) {
                    _ddSelected = snapshot.data![0];
                  } else {
                    _ddSelected =
                        getEditCity(snapshot.data!, widget.data["CityId"]);
                  }
                  isCityListGet = false;
                }
                return DropdownButton(
                  value: _ddSelected,
                  items: snapshot.data!.map(
                    (CityModel e) {
                      print(e);
                      return DropdownMenuItem(
                        value: e,
                        child: Text(
                          e.cityName.toString(),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _ddSelected = value as CityModel;
                      },
                    );
                  },
                );
              } else {
                return Container(
                  height: 50,
                  width: 50,
                );
              }
            },
            future: isCityListGet ? MyDatabase().getCityList() : null,
          ),
          TextFormField(
              controller: _sc,
              decoration: InputDecoration(labelText: "Enter Salary")),
          TextButton(
              onPressed: () {
                Map<String, Object?> map = {};
                map["Name"] = _nc.text;
                map["Salary"] = int.parse(_sc.text);
                map["CityID"] = _ddSelected.cityId!;
                if (widget.data != null) {
                  map["id"] = widget.data!["id"];
                  MyDatabase().editById(map, map["id"]);
                } else {
                  MyDatabase().add(map: map);
                }
                Navigator.of(context)
                  ..pop()
                  ..pushReplacement(
                      MaterialPageRoute(builder: (context) => EmployeesDB()));
              },
              child: Text("Submit"))
        ],
      ),
    );
  }

  CityModel getEditCity(List<CityModel> abc, usersCityID) {
    for (int i = 0; i < abc.length; i++) {
      if (abc[i].cityId == usersCityID) {
        return abc[i];
      }
    }
    return abc[0];
  }
}