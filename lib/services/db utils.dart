import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';


class DatabaseHelper {
  static final _databaseName = "tarifler.db";
  static final _databaseVersion = 1;

  static final table = 'tarifler';

  static final columnBaslik = 'baslik';
  static final columnMalzemeler = 'malzemeler';
  static final columnYapilis = 'yapilis';

  // Singleton DatabaseHelper
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // Veritabanı oluşturma veya mevcut bir veritabanını açma
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Veritabanını başlatma
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // Veritabanı tablosunu oluşturma
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnBaslik TEXT,
            $columnMalzemeler TEXT,
            $columnYapilis TEXT
          )
          ''');
  }

  // Yeni bir Tarifler eklemek için
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  // Tüm tarifler getirme
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  // Bir Tarifler güncelleme
  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    String baslik = row[columnBaslik];
    return await db.update(table, row, where: '$columnBaslik = ?', whereArgs: [baslik]);
  }

  // Bir Tarifler silme by Başlık
  Future<int> deleteByBaslik(String baslik) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnBaslik = ?', whereArgs: [baslik]);
  }
}
