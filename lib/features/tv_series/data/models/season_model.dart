import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/tv_series/domain/entities/season.dart';

part 'season_model.freezed.dart';
part 'season_model.g.dart';

@freezed
abstract class SeasonModel with _$SeasonModel {
  const factory SeasonModel({
    required int id,
    required String name,
    required String overview,
    @JsonKey(name: 'season_number') required int seasonNumber,
    @JsonKey(name: 'episode_count') required int episodeCount,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _SeasonModel;

  factory SeasonModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonModelFromJson(json);
}

extension SeasonModelMapper on SeasonModel {
  Season toDomain() => Season(
    id: id,
    name: name,
    overview: overview,
    seasonNumber: seasonNumber,
    episodeCount: episodeCount,
    voteAverage: voteAverage,
    posterPath: posterPath
  );
}
