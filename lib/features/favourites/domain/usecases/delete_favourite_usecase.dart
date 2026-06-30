import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/domain/repositories/favourites_repository.dart';

@injectable
class DeleteFavouriteUsecase {
  final FavouritesRepository _repository;

  DeleteFavouriteUsecase(this._repository);

  Future<void> call (int id, MediaType type) => _repository.deleteFavourite(id, type);

}