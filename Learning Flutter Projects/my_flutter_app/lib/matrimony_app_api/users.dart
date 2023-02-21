import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_flutter_app/matrimony_app_api/user_details_page.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {


  List<Widget> getListTiles(lst) {
    List<Widget> list = [];
    // print("lst");
    for (int i = 0; i < lst.length; i++) {
      list.add(
        Card(
          child: InkWell(
            onTap: () {
              Map user = lst[i];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailsPage(map: user),
                ),
              );
            },
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(lst[i]["avatar"].toString()),
              ),
              subtitle: Text(lst[i]["city"].toString()),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                lst[i]["name"].toString(),
              ),
            ),
          ),
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: FutureBuilder(
          future: callUsersApi(),
          builder: (context, snapshot) {
            // print(snapshot.data.toString());
            if (snapshot.data != null && snapshot.hasData) {
              List<dynamic> lst = jsonDecode(snapshot.data.toString());
              return ListView(
                children: getListTiles(lst),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
  Future<dynamic> callUsersApi() async {
    http.Response res = await http.get(
      Uri.parse("https://630c662f53a833c53429c1c8.mockapi.io/users"),
    );
    return res.body;
  }
}
