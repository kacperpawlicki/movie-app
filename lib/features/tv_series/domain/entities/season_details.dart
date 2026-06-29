import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/tv_series/domain/entities/episode.dart';

part 'season_details.freezed.dart';

@freezed
abstract class SeasonDetails with _$SeasonDetails {
  const factory SeasonDetails({
    required int id,
    required String name,
    required String overview,
    required int seasonNumber,
    required double voteAverage,
    required String airDate,
    required List<Episode> episodes,
    String? posterPath
  }) = _SeasonDetails;
}