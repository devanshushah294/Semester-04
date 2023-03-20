import 'dart:io';
import 'package:employee_project/database/city_model.dart';
// import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'employees.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "employees.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
          await rootBundle.load(join('assets/database', 'employees.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }

  Future<void> getUsers() async {
    Database db = await initDatabase();
    dynamic res = await db.rawQuery("Select * from Employees");
  }

  Future<dynamic> getData() async {
    Database db = await initDatabase();
    dynamic list = await db.rawQuery(
        "Select * from Employees inner join City on Employees.CityId = City.CityID");
    getUsers();
    return list;
  }

  Future<void> deleteById(int id) async {
    Database db = await initDatabase();
    dynamic res = await db.rawQuery("Delete from Employees where id = $id");
    // db.delete("Employees",where:"id = ?",whereArgs: [id]);
  }

  Future<void> add({required Map<String, Object?> map}) async {
    Database db = await initDatabase();
    dynamic res = await db.insert("Employees", map);
  }

  Future<void> editById(map, id) async {
    Database db = await initDatabase();
    dynamic res = await db.update("Employees",map, where: "id = ?", whereArgs: [id]);
  }

  Future<List<CityModel>> getCityList() async {
    Database db = await initDatabase();
    List<Map<String, Object?>> res = await db.rawQuery("Select * from City");
    List<CityModel> resList = [];

    for (int i = 0; i < res.length; i++) {
      CityModel model = CityModel();
      model.cityId = int.parse(res[i]["CityID"].toString());
      model.cityName = res[i]["CityName"].toString();
      resList.add(model);
    }
    return resList;
  }
}
