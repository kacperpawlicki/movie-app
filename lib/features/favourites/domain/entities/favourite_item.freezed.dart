// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavouriteItem {

 int get id; MediaType get type; String get title; String? get posterPath;
/// Create a copy of FavouriteItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouriteItemCopyWith<FavouriteItem> get copyWith => _$FavouriteItemCopyWithImpl<FavouriteItem>(this as FavouriteItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouriteItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,title,posterPath);

@override
String toString() {
  return 'FavouriteItem(id: $id, type: $type, title: $title, posterPath: $posterPath)';
}


}

/// @nodoc
abstract mixin class $FavouriteItemCopyWith<$Res>  {
  factory $FavouriteItemCopyWith(FavouriteItem value, $Res Function(FavouriteItem) _then) = _$FavouriteItemCopyWithImpl;
@useResult
$Res call({
 int id, MediaType type, String title, String? posterPath
});




}
/// @nodoc
class _$FavouriteItemCopyWithImpl<$Res>
    implements $FavouriteItemCopyWith<$Res> {
  _$FavouriteItemCopyWithImpl(this._self, this._then);

  final FavouriteItem _self;
  final $Res Function(FavouriteItem) _then;

/// Create a copy of FavouriteItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? posterPath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MediaType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavouriteItem].
extension FavouriteItemPatterns on FavouriteItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouriteItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouriteItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouriteItem value)  $default,){
final _that = this;
switch (_that) {
case _FavouriteItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouriteItem value)?  $default,){
final _that = this;
switch (_that) {
case _FavouriteItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  MediaType type,  String title,  String? posterPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouriteItem() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.posterPath);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  MediaType type,  String title,  String? posterPath)  $default,) {final _that = this;
switch (_that) {
case _FavouriteItem():
return $default(_that.id,_that.type,_that.title,_that.posterPath);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  MediaType type,  String title,  String? posterPath)?  $default,) {final _that = this;
switch (_that) {
case _FavouriteItem() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.posterPath);case _:
  return null;

}
}

}

/// @nodoc


class _FavouriteItem implements FavouriteItem {
  const _FavouriteItem({required this.id, required this.type, required this.title, this.posterPath});
  

@override final  int id;
@override final  MediaType type;
@override final  String title;
@override final  String? posterPath;

/// Create a copy of FavouriteItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouriteItemCopyWith<_FavouriteItem> get copyWith => __$FavouriteItemCopyWithImpl<_FavouriteItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouriteItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,title,posterPath);

@override
String toString() {
  return 'FavouriteItem(id: $id, type: $type, title: $title, posterPath: $posterPath)';
}


}

/// @nodoc
abstract mixin class _$FavouriteItemCopyWith<$Res> implements $FavouriteItemCopyWith<$Res> {
  factory _$FavouriteItemCopyWith(_FavouriteItem value, $Res Function(_FavouriteItem) _then) = __$FavouriteItemCopyWithImpl;
@override @useResult
$Res call({
 int id, MediaType type, String title, String? posterPath
});




}
/// @nodoc
class __$FavouriteItemCopyWithImpl<$Res>
    implements _$FavouriteItemCopyWith<$Res> {
  __$FavouriteItemCopyWithImpl(this._self, this._then);

  final _FavouriteItem _self;
  final $Res Function(_FavouriteItem) _then;

/// Create a copy of FavouriteItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? posterPath = freezed,}) {
  return _then(_FavouriteItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MediaType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
