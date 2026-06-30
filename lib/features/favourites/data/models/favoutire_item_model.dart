import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';

part 'favoutire_item_model.freezed.dart';
part 'favoutire_item_model.g.dart';

@freezed
abstract class FavouriteItemModel with _$FavouriteItemModel {
  const factory FavouriteItemModel({
    required int id,
    required String type, // movie / tv
    required String title,
    String? posterPath,
  }) = _FavouriteItemModel;

  factory FavouriteItemModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteItemModelFromJson(json);
}

extension FavouriteItemModelMapper on FavouriteItemModel {
  FavouriteItem toDomain() => FavouriteItem(
    id: id,
    type: MediaType.values.byName(type),
    title: title,
    posterPath: posterPath,
  );
}

extension FavouriteItemMapper on FavouriteItem {
  FavouriteItemModel toModel() => FavouriteItemModel(
    id: id,
    type: type.name,
    title: title,
    posterPath: posterPath,
  );
}