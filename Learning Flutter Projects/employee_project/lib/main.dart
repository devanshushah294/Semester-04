import 'package:employee_project/api/employees.dart';
import 'package:employee_project/database/employees_db.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmployeesDB(),
    );
  }
}
