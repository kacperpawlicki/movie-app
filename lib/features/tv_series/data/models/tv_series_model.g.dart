// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TvSeriesModel _$TvSeriesModelFromJson(Map<String, dynamic> json) =>
    _TvSeriesModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$TvSeriesModelToJson(_TvSeriesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
    };
