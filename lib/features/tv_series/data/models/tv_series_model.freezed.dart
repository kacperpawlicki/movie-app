// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TvSeriesModel {

 int get id; String get name;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'backdrop_path') String? get backdropPath;
/// Create a copy of TvSeriesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvSeriesModelCopyWith<TvSeriesModel> get copyWith => _$TvSeriesModelCopyWithImpl<TvSeriesModel>(this as TvSeriesModel, _$identity);

  /// Serializes this TvSeriesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,voteAverage,posterPath,backdropPath);

@override
String toString() {
  return 'TvSeriesModel(id: $id, name: $name, voteAverage: $voteAverage, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class $TvSeriesModelCopyWith<$Res>  {
  factory $TvSeriesModelCopyWith(TvSeriesModel value, $Res Function(TvSeriesModel) _then) = _$TvSeriesModelCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath
});




}
/// @nodoc
class _$TvSeriesModelCopyWithImpl<$Res>
    implements $TvSeriesModelCopyWith<$Res> {
  _$TvSeriesModelCopyWithImpl(this._self, this._then);

  final TvSeriesModel _self;
  final $Res Function(TvSeriesModel) _then;

/// Create a copy of TvSeriesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? voteAverage = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TvSeriesModel].
extension TvSeriesModelPatterns on TvSeriesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvSeriesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeriesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvSeriesModel value)  $default,){
final _that = this;
switch (_that) {
case _TvSeriesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvSeriesModel value)?  $default,){
final _that = this;
switch (_that) {
case _TvSeriesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeriesModel() when $default != null:
return $default(_that.id,_that.name,_that.voteAverage,_that.posterPath,_that.backdropPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)  $default,) {final _that = this;
switch (_that) {
case _TvSeriesModel():
return $default(_that.id,_that.name,_that.voteAverage,_that.posterPath,_that.backdropPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)?  $default,) {final _that = this;
switch (_that) {
case _TvSeriesModel() when $default != null:
return $default(_that.id,_that.name,_that.voteAverage,_that.posterPath,_that.backdropPath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TvSeriesModel implements TvSeriesModel {
  const _TvSeriesModel({required this.id, required this.name, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'backdrop_path') this.backdropPath});
  factory _TvSeriesModel.fromJson(Map<String, dynamic> json) => _$TvSeriesModelFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;

/// Create a copy of TvSeriesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvSeriesModelCopyWith<_TvSeriesModel> get copyWith => __$TvSeriesModelCopyWithImpl<_TvSeriesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvSeriesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeriesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,voteAverage,posterPath,backdropPath);

@override
String toString() {
  return 'TvSeriesModel(id: $id, name: $name, voteAverage: $voteAverage, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class _$TvSeriesModelCopyWith<$Res> implements $TvSeriesModelCopyWith<$Res> {
  factory _$TvSeriesModelCopyWith(_TvSeriesModel value, $Res Function(_TvSeriesModel) _then) = __$TvSeriesModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath
});




}
/// @nodoc
class __$TvSeriesModelCopyWithImpl<$Res>
    implements _$TvSeriesModelCopyWith<$Res> {
  __$TvSeriesModelCopyWithImpl(this._self, this._then);

  final _TvSeriesModel _self;
  final $Res Function(_TvSeriesModel) _then;

/// Create a copy of TvSeriesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? voteAverage = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_TvSeriesModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
