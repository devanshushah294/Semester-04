import "package:employee_project/api/add_edit_page.dart";
import "package:employee_project/api/api_functions.dart";
import "package:flutter/material.dart";

class Employees extends StatefulWidget {
  Employees();

  @override
  State<Employees> createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Employees"),
            InkWell(
              child: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddEditPage(em: null),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: ApiFunctions().getAll(),
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return ListView(
              children: getTiles(snapshot.data!),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  List<Widget> getTiles(List<dynamic> list) {
    List<Widget> lst = [];
    for (int i = 0; i < list.length; i++) {
      lst.add(Card(
        child: ListTile(
          title: Text("Name :- " + list[i]["Name"]),
          subtitle: Text("Salary :- " + list[i]["Salary"]),
          trailing: Container(
              width: 50,
              child: Row(
                children: [
                  InkWell(
                    child: Icon(Icons.edit),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddEditPage(
                            em: list[i],
                          ),
                        ),
                      );
                    },
                  ),
                  InkWell(
                    child: Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        ApiFunctions().deleteById(list[i]["id"]);
                      });
                    },
                  )
                ],
              )),
        ),
      ));
    }
    return lst;
  }
}
