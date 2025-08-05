import 'package:flutter/rendering.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
import '../tables/favorite_table.dart';

class SqfliteDatabase {
  static late final Database db;

  static Future<void> initialize() async {
    String path = await _getDbPath();
    db = await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  static void _onCreate(Database db, int version) async {
    debugPrint('Here onCreate');
    db.execute(FavoriteTable.create);
  }

  static Future<String> _getDbPath() async {
    String databasePath = await getDatabasesPath();
    return '$databasePath/movies.db';
  }

  //  static Future<void> deleteDatabaseFile() async {
  //   final path = await _getDbPath();
  //   await deleteDatabase(path);
  //   debugPrint('Database deleted at: $path');
  // }
}
