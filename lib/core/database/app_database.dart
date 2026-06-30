import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> openAppDatabase() async {
  final path = join(await getDatabasesPath(), 'movie_app.db');
  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE favorites (
          id INTEGER NOT NULL,
          type TEXT NOT NULL,
          title TEXT NOT NULL,
          posterPath TEXT,
          PRIMARY KEY (id, type)
        )
      ''');
    },
  );
}

@module
abstract class DatabaseModule {
  @preResolve
  Future<Database> get database => openAppDatabase();
}