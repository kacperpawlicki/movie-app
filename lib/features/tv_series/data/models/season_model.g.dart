// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeasonModel _$SeasonModelFromJson(Map<String, dynamic> json) => _SeasonModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  overview: json['overview'] as String,
  seasonNumber: (json['season_number'] as num).toInt(),
  episodeCount: (json['episode_count'] as num).toInt(),
  voteAverage: (json['vote_average'] as num).toDouble(),
  posterPath: json['poster_path'] as String?,
);

Map<String, dynamic> _$SeasonModelToJson(_SeasonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'season_number': instance.seasonNumber,
      'episode_count': instance.episodeCount,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
    };
