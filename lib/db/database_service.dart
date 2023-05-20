import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  DatabaseService._();


  static final db = DatabaseService._();

  static Database? _database;

  // Getter database
  Future<Database?> get database async {
    if(_database != null) {
      return _database;
    }
    _database = await initDB();
      return _database;
  }

  initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'notes.db'),
      version: 1,
      onCreate: (db, version)  async {
        db.execute('''
          CREATE TABLE notes(id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          description TEXT,
          createdAt DATE)
          ''');
      },
    );
  }
}