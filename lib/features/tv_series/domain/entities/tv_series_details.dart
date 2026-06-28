import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/tv_series/domain/entities/genre.dart';
import 'package:movie_app/features/tv_series/domain/entities/season.dart';

part 'tv_series_details.freezed.dart';

@freezed
abstract class TvSeriesDetails with _$TvSeriesDetails {
  const factory TvSeriesDetails({
    required int id,
    required String name,
    required String overview,
    required double voteAverage,
    required int voteCount,
    required List<Genre> genres,
    required int numberOfEpisodes,
    required int numberOfSeasons,
    required List<Season> seasons,
    String? posterPath,
    String? backdropPath
  }) = _TvSeriesDetails;
}