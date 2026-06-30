import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/domain/repositories/favourites_repository.dart';

@injectable
class GetFavouritesUsecase {
  final FavouritesRepository _repository;

  GetFavouritesUsecase(this._repository);

  Future<List<FavouriteItem>> call () => _repository.getFavourites();

}