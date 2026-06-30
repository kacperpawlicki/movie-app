// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favoutire_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavouriteItemModel _$FavouriteItemModelFromJson(Map<String, dynamic> json) =>
    _FavouriteItemModel(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      title: json['title'] as String,
      posterPath: json['posterPath'] as String?,
    );

Map<String, dynamic> _$FavouriteItemModelToJson(_FavouriteItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'posterPath': instance.posterPath,
    };
