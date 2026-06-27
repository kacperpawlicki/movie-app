import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_model.dart';

part 'tv_series_response_model.g.dart';
part 'tv_series_response_model.freezed.dart';

@freezed
abstract class TvSeriesResponseModel with _$TvSeriesResponseModel {
  const factory TvSeriesResponseModel({
    required int page,
    required List<TvSeriesModel> results,
  }) = _TvSeriesResponseModel;

  factory TvSeriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesResponseModelFromJson(json);
}