import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  late Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  Future<Database> initializeDb() async {
    // Veritabanı dosyasının yolu
    String dbPath = join(await getDatabasesPath(), 'my_database.db');
    var eTradeDb = await openDatabase(dbPath, version: 1, onCreate: createDb);
    return eTradeDb;
  }

  void createDb(Database db, int version) async {
    await db.execute(
        "CREATE TABLE recipes(ad TEXT, yapilis TEXT, malzemeler TEXT)");
  }

  Future<List<Map<String, dynamic>>> getRecipes() async {
    Database db = await this.db;
    var result = await db.query("recipes");
    return result;
  }

  Future<int> insertRecipe(Recipes recipe) async {
    Database db = await this.db;
    var result = await db.insert("recipes", recipe.toMap());
    return result;
  }
}

class Recipes {
  String ad;
  String yapilis;
  String malzemeler;

  Recipes({required this.ad, required this.yapilis, required this.malzemeler});

  Map<String, dynamic> toMap() {
    return {
      'ad': ad,
      'yapilis': yapilis,
      'malzemeler': malzemeler,
    };

  }
}


