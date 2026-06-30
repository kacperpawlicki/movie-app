import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';

abstract class FavouritesRepository {
  Future<List<FavouriteItem>> getFavourites();
  Future<void> addFavourite(FavouriteItem item);
  Future<void> deleteFavourite(int id, MediaType type);
  Future<bool> isFavourite(int id, MediaType type);
}