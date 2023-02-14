import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class UserDetailsPage extends StatefulWidget {
  UserDetailsPage({Key? key, @required this.id}) : super(key: key);
  var id;

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  initState() {
    super.initState();
    getUserDetails();
  }


  Future<Map> getUserDetails() async {
    Response res = await http.get(
      Uri.parse(
          "https://630c662f53a833c53429c1c8.mockapi.io/users/" + widget.id),
    );
    return jsonDecode(res.body.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User page"),
      ),
      body: FutureBuilder(builder: (context, snapshot) {
        if(snapshot.hasData){
          return  Card(child: Text("Name : ${snapshot.data!["name"]}"));
        }else{
          return CircularProgressIndicator();
        }
      },future: getUserDetails(),)


    );
  }
}
