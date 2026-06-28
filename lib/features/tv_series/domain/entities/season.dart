import 'package:freezed_annotation/freezed_annotation.dart';

part 'season.freezed.dart';

@freezed
abstract class Season with _$Season {
  const factory Season({
    required int id,
    required String name,
    required String overview,
    required int seasonNumber,
    required int episodeCount,
    required double voteAverage,
    String? posterPath
  }) = _Season;
}