part of 'popular_movies_screen_bloc.dart';

@freezed
class PopularMoviesScreenEvent with _$PopularMoviesScreenEvent {
  const factory PopularMoviesScreenEvent.started() = _Started;
  const factory PopularMoviesScreenEvent.nextPageRequested() = _NextPageRequested;
}