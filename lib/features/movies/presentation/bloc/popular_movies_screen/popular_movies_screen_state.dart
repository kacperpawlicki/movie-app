part of 'popular_movies_screen_bloc.dart';

@freezed
class PopularMoviesScreenState with _$PopularMoviesScreenState {
  const factory PopularMoviesScreenState.loading() = _Loading;
  const factory PopularMoviesScreenState.loaded({
    required List<Movie> movies,
    required int currentPage,
    required bool hasReachedMax,
    @Default(false) bool isLoadingMore,
  }) = _Loaded;
  const factory PopularMoviesScreenState.error(String message) = _Error;
}
