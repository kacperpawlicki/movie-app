import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/movies/domain/entities/genre.dart';

part 'movie_details.freezed.dart';

@freezed
abstract class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required int id,
    required String title,
    required String overview,
    required double voteAverage,
    required int voteCount,
    required int runtime,
    required List<Genre> genres,
    String? posterPath,
    String? backdropPath
  }) = _MovieDetails;
}