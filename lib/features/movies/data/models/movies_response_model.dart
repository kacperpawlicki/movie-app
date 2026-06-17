import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/movies/data/models/movie_model.dart';

part 'movies_response_model.g.dart';
part 'movies_response_model.freezed.dart';

@freezed
abstract class MoviesResponseModel with _$MoviesResponseModel {
  const factory MoviesResponseModel({
    required int page,
    required List<MovieModel> results,
  }) = _MoviesResponseModel;

  factory MoviesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseModelFromJson(json);
}
