import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  const factory MovieModel({
    required int id,
    required String title,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);
}

extension MovieModelMapper on MovieModel {
  Movie toDomain() => Movie(id: id, title: title, voteAverage: voteAverage, posterPath: posterPath);
}




