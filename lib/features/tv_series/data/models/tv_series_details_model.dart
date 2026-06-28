import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/tv_series/data/models/genre_model.dart';
import 'package:movie_app/features/tv_series/data/models/season_model.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series_details.dart';

part 'tv_series_details_model.freezed.dart';
part 'tv_series_details_model.g.dart';

@freezed
abstract class TvSeriesDetailsModel with _$TvSeriesDetailsModel {
  const factory TvSeriesDetailsModel({
    required int id,
    required String name,
    required String overview,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    required List<GenreModel> genres,
    @JsonKey(name: 'number_of_episodes') required int numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') required int numberOfSeasons,
    required List<SeasonModel> seasons,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
  }) = _TvSeriesDetailsModel;

  factory TvSeriesDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesDetailsModelFromJson(json);
}

extension TvSeriesDetailsModelMapper on TvSeriesDetailsModel {
  TvSeriesDetails toDomain() => TvSeriesDetails(
    id: id,
    name: name,
    overview: overview,
    voteAverage: voteAverage,
    voteCount: voteCount,
    genres: genres.map((g) => g.toDomain()).toList(),
    numberOfEpisodes: numberOfEpisodes,
    numberOfSeasons: numberOfSeasons,
    seasons: seasons.map((s) => s.toDomain()).toList(),
    posterPath: posterPath,
    backdropPath: backdropPath
  );
}
