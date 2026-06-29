import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';

@freezed
abstract class Episode with _$Episode {
  const factory Episode({
    required int id,
    required String name,
    required String overview,
    required int episodeNumber,
    int? runtime,
    required double voteAverage,
    String? stillPath
  }) = _Episode;
}