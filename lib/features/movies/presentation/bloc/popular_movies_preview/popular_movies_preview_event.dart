part of 'popular_movies_preview_bloc.dart';

@freezed
class PopularMoviesPreviewEvent with _$PopularMoviesPreviewEvent {
  const factory PopularMoviesPreviewEvent.moviesRequested() = _MoviesRequested;
}