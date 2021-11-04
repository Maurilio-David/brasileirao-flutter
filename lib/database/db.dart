import 'package:sqflite/sqlite_api.dart';

class DB {
  DB._();
  static final DB instance = DB._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
  }
}
