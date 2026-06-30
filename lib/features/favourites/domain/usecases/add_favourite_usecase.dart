import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/domain/repositories/favourites_repository.dart';

@injectable
class AddFavouriteUsecase {
  final FavouritesRepository _repository;

  AddFavouriteUsecase(this._repository);

  Future<void> call (FavouriteItem item) => _repository.addFavourite(item);

}