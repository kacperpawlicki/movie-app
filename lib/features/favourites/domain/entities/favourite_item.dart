import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_item.freezed.dart';

@freezed
abstract class FavouriteItem with _$FavouriteItem {
  const factory FavouriteItem({
    required int id,
    required MediaType type,
    required String title,
    String? posterPath
  }) = _FavouriteItem;
}

enum MediaType { movie, tv }