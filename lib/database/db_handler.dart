import 'dart:io';

//import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
//import 'package:shoesapp_ui/controller/logincontroller.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';



class DBHandler {
  Database? _database;

  Future<Database?> database() async {
    if (_database != null) {
      return _database;
    }
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'mydatabase.db');

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          
          CREATE TABLE user(
          
          id INTEGER PRIMARY KEY,
          username TEXT,
          passcode  TEXT

          
          )


          ''');
      },
    );

    return _database!;
  }

  Future<void> insertData(String username, var passcode) async {
    Database? db = await database();
    await db?.insert('user', {
      'username': username,
      'passcode': passcode,
    });
  }

  Future<List<Map<String, dynamic>>> readData() async {
    Database? db = await database();
    final list = await db!.query('user');
    return list;
  }

  Future<void> updateData(int id, String name, int age) async {
    Database? db = await database();
    await db?.update(
      'user',
      {'name': name, 'age': age},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteData(int id) async {
    Database? db = await database();
    await db?.delete('user', where: 'id = ?', whereArgs: [id]);
  }
}
