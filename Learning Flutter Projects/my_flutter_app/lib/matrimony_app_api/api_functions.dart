import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiFunctions{
  String apiUrl = "https://630c662f53a833c53429c1c8.mockapi.io/users";

  Future<void> updateInApi(Map<String, String> map, {id}) async {
    map["id"] = id.toString();
    print(map);
    http.Response res = await http.put(
      Uri.parse(
          "https://630c662f53a833c53429c1c8.mockapi.io/users/" + id.toString()),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(map),
    );
  }

  Future<void> addInApi(Map<String, String> map) async {
    print(map);
    http.Response res = await http.post(
      Uri.parse("https://630c662f53a833c53429c1c8.mockapi.io/users"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(map),
    );
  }

  Future<void> deleteById(id) async {
    final http.Response res = await http.delete(
      Uri.parse("https://630c662f53a833c53429c1c8.mockapi.io/users/" + id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }

  Future<dynamic> callUsersApi() async {
    http.Response res = await http.get(
      Uri.parse("https://630c662f53a833c53429c1c8.mockapi.io/users"),
    );
    return res.body;
  }
}