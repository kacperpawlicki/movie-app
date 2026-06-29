import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/tv_series/data/models/episode_model.dart';
import 'package:movie_app/features/tv_series/domain/entities/season_details.dart';

part 'season_details_model.freezed.dart';
part 'season_details_model.g.dart';

@freezed
abstract class SeasonDetailsModel with _$SeasonDetailsModel {
  const factory SeasonDetailsModel({
    required int id,
    required String name,
    required String overview,
    @JsonKey(name: 'season_number') required int seasonNumber,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'air_date') required String airDate,
    required List<EpisodeModel> episodes,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _SeasonDetailsModel;

  factory SeasonDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonDetailsModelFromJson(json);
}

extension SeasonDetailsModelMapper on SeasonDetailsModel {
  SeasonDetails toDomain() => SeasonDetails(
    id: id,
    name: name,
    overview: overview,
    seasonNumber: seasonNumber,
    voteAverage: voteAverage,
    airDate: airDate,
    episodes: episodes.map((e) => e.toDomain()).toList(),
    posterPath: posterPath
  );
}
