import 'dart:io';

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
          
          CREATE TABLE DatabaseTable(
          
          id INTEGER PRIMARY KEY,
          name TEXT,
          age  INTEGER
          
          )


          ''');
      },
    );

    return _database!;
  }

  Future<void> insertData(String name, int age) async {
    Database? db = await database();
    await db?.insert('DatabaseTable', {'name': name, 'age': age});
  }

  Future<List<Map<String, dynamic>>> readData() async {
    Database? db = await database();
    final list = await db!.query('DatabaseTable');
    return list;
  }

  Future<void> updateData(int id, String name, int age) async {
    Database? db = await database();
    await db?.update(
      'DatabaseTable',
      {'name': name, 'age': age},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteData(int id) async {
    Database? db = await database();
    await db?.delete('DatabaseTable', where: 'id = ?', whereArgs: [id]);
  }
}
