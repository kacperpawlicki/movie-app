import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/movies/data/models/genre_model.dart';
import 'package:movie_app/features/movies/domain/entities/movie_details.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
abstract class MovieDetailsModel with _$MovieDetailsModel {
  const factory MovieDetailsModel({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    required int runtime,
    required List<GenreModel> genres,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);
}

extension MovieDetailsModelMapper on MovieDetailsModel {
  MovieDetails toDomain() => MovieDetails(
    id: id,
    title: title,
    overview: overview,
    voteAverage: voteAverage,
    voteCount: voteCount,
    runtime: runtime,
    genres: genres.map((g) => g.toDomain()).toList(),
    posterPath: posterPath,
    backdropPath: backdropPath,
  );
}
