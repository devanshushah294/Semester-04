import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiFunctions {
  String apiUrl = "https://630c662f53a833c53429c1c8.mockapi.io/employee";

  Future<List<dynamic>> getAll() async {
    http.Response res = await http.get(Uri.parse(apiUrl));
    List<dynamic> list = jsonDecode(res.body.toString());
    return list;
  }

  Future<void> deleteById(id) async {
    http.Response res = await http.delete(Uri.parse("$apiUrl/$id"));
  }

  Future<void> add(map) async {
    http.Response res = await http.post(Uri.parse(apiUrl), body: map);
  }

  Future<void> editById(map) async {
    http.Response res = await http.put(Uri.parse("$apiUrl/${map["id"]}"), body: map);
  }

}
