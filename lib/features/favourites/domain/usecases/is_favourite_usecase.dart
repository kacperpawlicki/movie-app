import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/domain/repositories/favourites_repository.dart';

@injectable
class IsFavouriteUsecase {
  final FavouritesRepository _repository;

  IsFavouriteUsecase(this._repository);

  Future<bool> call (int id, MediaType type) => _repository.isFavourite(id, type);

}