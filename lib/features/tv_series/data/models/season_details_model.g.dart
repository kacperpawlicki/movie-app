// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeasonDetailsModel _$SeasonDetailsModelFromJson(Map<String, dynamic> json) =>
    _SeasonDetailsModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      overview: json['overview'] as String,
      seasonNumber: (json['season_number'] as num).toInt(),
      voteAverage: (json['vote_average'] as num).toDouble(),
      airDate: json['air_date'] as String,
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => EpisodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SeasonDetailsModelToJson(_SeasonDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'season_number': instance.seasonNumber,
      'vote_average': instance.voteAverage,
      'air_date': instance.airDate,
      'episodes': instance.episodes,
      'poster_path': instance.posterPath,
    };
