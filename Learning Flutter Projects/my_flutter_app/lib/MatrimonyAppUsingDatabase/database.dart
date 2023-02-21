import 'dart:io';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'matrimony.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "matrimony.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
          await rootBundle.load(join('assets/database', 'matrimony.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }

  Future<dynamic> getDataFromUsersTable() async {
    Database db = await initDatabase();
    List<Map<String, Object?>> list =
        await db.rawQuery("Select * from Tbl_Users");
    // db.insert("Tbl_Users",{
    //   "User_Id":5,
    //   "UserName": "Diya",
    //   "City_ID": 4,
    //   "Image": null,
    //   "PhoneNumber": "9874563210",
    //   "Gender": "Female",
    //   "Job": "Web Developer"
    // });
    // db.rawQuery("Delete from Tbl_Users where User_ID=4 or User_ID=5");
    print("database here");
    print("User :: ${list.toString()}");
    print("database ends here");
    return list;
  }

  void deleteUserById(id) async {
    Database db = await initDatabase();
    print("id :: ${id}");
    print("000${id.runtimeType}000");

    db.rawQuery("Delete from Tbl_Users where User_ID = ${id}");
  }
  Future<void> addInUsers(Map<String, Object> map) async {
    Database db = await initDatabase();
    db.insert("Tbl_Users", map);
  }
}
