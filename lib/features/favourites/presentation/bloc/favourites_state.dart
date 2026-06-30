part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.loading() = _Loading;
  const factory FavouritesState.loaded({
    required List<FavouriteItem> favourites
  }) = _Loaded;
  const factory FavouritesState.error(String message) = _Error;
}
