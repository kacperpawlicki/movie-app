import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/data/datasources/favourites_local_datasource.dart';
import 'package:movie_app/features/favourites/data/models/favoutire_item_model.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/domain/repositories/favourites_repository.dart';

@Singleton(as: FavouritesRepository)
class FavouritesRepositoryImpl implements FavouritesRepository{
  final FavouritesLocalDataSource _localDataSource;

  FavouritesRepositoryImpl(this._localDataSource);

  @override
  Future<void> addFavourite(FavouriteItem item) async {
    _localDataSource.addFavorite(item.toModel());
  }

  @override
  Future<void> deleteFavourite(int id, MediaType type) async {
    _localDataSource.deleteFavorite(id, type.name);
  }

  @override
  Future<List<FavouriteItem>> getFavourites() async {
    final models = await _localDataSource.getAllFavorites();
    return models.map((model) => model.toDomain()).toList();
  }

  @override
  Future<bool> isFavourite(int id, MediaType type) {
    return _localDataSource.isFavorite(id, type.name);
  }
  
}