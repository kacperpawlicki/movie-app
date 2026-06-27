import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';

part 'tv_series_model.freezed.dart';
part 'tv_series_model.g.dart';

@freezed
abstract class TvSeriesModel with _$TvSeriesModel {
  const factory TvSeriesModel({
    required int id,
    required String name,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
  }) = _TvSeriesModel;

  factory TvSeriesModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesModelFromJson(json);
}

extension TvSeriesModelMapper on TvSeriesModel {
  TvSeries toDomain() => TvSeries(
    id: id,
    name: name,
    voteAverage: voteAverage,
    posterPath: posterPath,
    backdropPath: backdropPath,
  );
}
