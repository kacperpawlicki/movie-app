import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/tv_series/domain/entities/episode.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

@freezed
abstract class EpisodeModel with _$EpisodeModel {
  const factory EpisodeModel({
    required int id,
    required String name,
    required String overview,
    @JsonKey(name: 'episode_number') required int episodeNumber,
    int? runtime,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'still_path') String? stillPath,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);
}

extension EpisodeModelMapper on EpisodeModel {
  Episode toDomain() => Episode(
    id: id,
    name: name,
    overview: overview,
    episodeNumber: episodeNumber,
    runtime: runtime,
    voteAverage: voteAverage,
    stillPath: stillPath
  );
}
