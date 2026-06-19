part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.started(int id) = _Started;
}