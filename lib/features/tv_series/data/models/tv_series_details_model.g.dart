// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TvSeriesDetailsModel _$TvSeriesDetailsModelFromJson(
  Map<String, dynamic> json,
) => _TvSeriesDetailsModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  overview: json['overview'] as String,
  voteAverage: (json['vote_average'] as num).toDouble(),
  voteCount: (json['vote_count'] as num).toInt(),
  genres: (json['genres'] as List<dynamic>)
      .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  numberOfEpisodes: (json['number_of_episodes'] as num).toInt(),
  numberOfSeasons: (json['number_of_seasons'] as num).toInt(),
  seasons: (json['seasons'] as List<dynamic>)
      .map((e) => SeasonModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
);

Map<String, dynamic> _$TvSeriesDetailsModelToJson(
  _TvSeriesDetailsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'overview': instance.overview,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
  'genres': instance.genres,
  'number_of_episodes': instance.numberOfEpisodes,
  'number_of_seasons': instance.numberOfSeasons,
  'seasons': instance.seasons,
  'poster_path': instance.posterPath,
  'backdrop_path': instance.backdropPath,
};
