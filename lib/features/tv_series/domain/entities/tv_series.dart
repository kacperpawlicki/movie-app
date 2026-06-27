import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series.freezed.dart';

@freezed
abstract class TvSeries with _$TvSeries {
  const factory TvSeries({
    required int id,
    required String name,
    required double voteAverage,
    String? posterPath,
    String? backdropPath
  }) = _TvSeries;
}