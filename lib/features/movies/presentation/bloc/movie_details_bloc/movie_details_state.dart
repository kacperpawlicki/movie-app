part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.loading() = _Loading;
  const factory MovieDetailsState.loaded({
    required MovieDetails details,
  }) = _Loaded;
  const factory MovieDetailsState.error(String message) = _Error;
}
