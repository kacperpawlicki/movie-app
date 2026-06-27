// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TvSeriesResponseModel _$TvSeriesResponseModelFromJson(
  Map<String, dynamic> json,
) => _TvSeriesResponseModel(
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => TvSeriesModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TvSeriesResponseModelToJson(
  _TvSeriesResponseModel instance,
) => <String, dynamic>{'page': instance.page, 'results': instance.results};
