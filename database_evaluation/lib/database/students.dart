import 'package:database_evaluation/database/add_ediit_page.dart';
import 'package:database_evaluation/database/my_database.dart';
import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  const Students({Key? key}) : super(key: key);

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  @override
  void initState() {
    super.initState();
    MyDatabase().copyPasteAssetFileToRoot().then((value) {
      print("Database connected Succesfully");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Employes"),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddEditPage(
                    data: null,
                  ),
                ),
              );
            },
            child: Icon(Icons.add),
          )
        ],
      )),
      body: FutureBuilder(
        builder: (context, snapshot) {
          print(snapshot.data.toString());
          if (snapshot.data != null) {
            return ListView(
              children: getTiles(snapshot.data),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
        future: MyDatabase().getAll(),
      ),
    );
  }

  List<Widget> getTiles(list) {
    List<Widget> lst = [];
    for (int i = 0; i < list.length; i++) {
      lst.add(
        Card(
          child: ListTile(
            title: Text(list[i]["Name"].toString()),
            subtitle: Text(list[i]["sem"].toString()),
            trailing: Container(
              child: Row(
                children: [
                  InkWell(
                    child: Icon(Icons.edit),
                    onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddEditPage(
                          data: list[i],
                        ),
                      ),
                    );},
                  ),
                  InkWell(
                    child: Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        MyDatabase().deleteById(list[i]["id"]);
                      });
                    },
                  )
                ],
              ),
              width: 50,
            ),
          ),
        ),
      );
    }

    return lst;
  }
}
