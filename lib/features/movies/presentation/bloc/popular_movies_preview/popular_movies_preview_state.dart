part of 'popular_movies_preview_bloc.dart';

@freezed
class PopularMoviesPreviewState with _$PopularMoviesPreviewState {
  const factory PopularMoviesPreviewState.loading() = _Loading;
  const factory PopularMoviesPreviewState.loaded({
    required List<Movie> movies
  }) = _Loaded;
  const factory PopularMoviesPreviewState.error(String message) = _Error;
}
