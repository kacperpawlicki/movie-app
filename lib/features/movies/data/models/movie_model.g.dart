// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  voteAverage: (json['vote_average'] as num).toDouble(),
  posterPath: json['poster_path'] as String?,
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
    };
