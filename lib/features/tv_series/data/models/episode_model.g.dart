// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) =>
    _EpisodeModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      overview: json['overview'] as String,
      episodeNumber: (json['episode_number'] as num).toInt(),
      runtime: (json['runtime'] as num?)?.toInt(),
      voteAverage: (json['vote_average'] as num).toDouble(),
      stillPath: json['still_path'] as String?,
    );

Map<String, dynamic> _$EpisodeModelToJson(_EpisodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'episode_number': instance.episodeNumber,
      'runtime': instance.runtime,
      'vote_average': instance.voteAverage,
      'still_path': instance.stillPath,
    };
