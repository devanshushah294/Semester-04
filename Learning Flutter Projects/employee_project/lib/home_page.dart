import 'package:employee_project/api/employees.dart';
import 'package:employee_project/database/employees_db.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmployeesDB()),
                );
              },
              child: Text("Database")),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Employees()),
                );
              },
              child: Text("Api"))
        ],
      ),
    );
  }
}
