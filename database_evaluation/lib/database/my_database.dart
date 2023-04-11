import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'student.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "student.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
          await rootBundle.load(join('assets/database', 'student.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }

  Future<dynamic> getAll() async {
    Database db = await initDatabase();
    List<Map<String, Object?>> res =
        await db.rawQuery("Select * from Students");
    return res;
  }

  Future<void> deleteById(id) async {
    Database db = await initDatabase();
    dynamic res = await db.delete("Students", where: "id = ?", whereArgs: [id]);
  }

  Future<void> add(map) async {
    Database db = await initDatabase();
    print(map.toString());
    dynamic res = await db.insert("Students", map);
  }

  Future<void> edit(map, id) async {
    Database db = await initDatabase();
    print(map.toString());
    dynamic res =
        await db.update("Students", map, where: "id = ?", whereArgs: [id]);
  }
}
