import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/data/models/favoutire_item_model.dart';
import 'package:sqflite/sqflite.dart';

@singleton
class FavouritesLocalDataSource {
  final Database _db;
  
  FavouritesLocalDataSource(this._db);

  Future<void> addFavorite(FavouriteItemModel item) async {
    await _db.insert(
      'favorites',
      item.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<FavouriteItemModel>> getAllFavorites() async {
    final maps = await _db.query('favorites');
    return maps.map((map) => FavouriteItemModel.fromJson(map)).toList();
  }

  Future<bool> isFavorite(int id, String type) async {
    final result = await _db.query(
      'favorites',
      where: 'id = ? AND type = ?',
      whereArgs: [id, type],
    );
    return result.isNotEmpty;
  }

  Future<void> deleteFavorite(int id, String type) async {
    await _db.delete(
      'favorites',
      where: 'id = ? AND type = ?',
      whereArgs: [id, type],
    );
  }
}