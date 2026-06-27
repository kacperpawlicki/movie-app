// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TvSeries {

 int get id; String get name; double get voteAverage; String? get posterPath; String? get backdropPath;
/// Create a copy of TvSeries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvSeriesCopyWith<TvSeries> get copyWith => _$TvSeriesCopyWithImpl<TvSeries>(this as TvSeries, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeries&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,voteAverage,posterPath,backdropPath);

@override
String toString() {
  return 'TvSeries(id: $id, name: $name, voteAverage: $voteAverage, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class $TvSeriesCopyWith<$Res>  {
  factory $TvSeriesCopyWith(TvSeries value, $Res Function(TvSeries) _then) = _$TvSeriesCopyWithImpl;
@useResult
$Res call({
 int id, String name, double voteAverage, String? posterPath, String? backdropPath
});




}
/// @nodoc
class _$TvSeriesCopyWithImpl<$Res>
    implements $TvSeriesCopyWith<$Res> {
  _$TvSeriesCopyWithImpl(this._self, this._then);

  final TvSeries _self;
  final $Res Function(TvSeries) _then;

/// Create a copy of TvSeries
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


/// Adds pattern-matching-related methods to [TvSeries].
extension TvSeriesPatterns on TvSeries {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvSeries value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeries() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvSeries value)  $default,){
final _that = this;
switch (_that) {
case _TvSeries():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvSeries value)?  $default,){
final _that = this;
switch (_that) {
case _TvSeries() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double voteAverage,  String? posterPath,  String? backdropPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeries() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double voteAverage,  String? posterPath,  String? backdropPath)  $default,) {final _that = this;
switch (_that) {
case _TvSeries():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double voteAverage,  String? posterPath,  String? backdropPath)?  $default,) {final _that = this;
switch (_that) {
case _TvSeries() when $default != null:
return $default(_that.id,_that.name,_that.voteAverage,_that.posterPath,_that.backdropPath);case _:
  return null;

}
}

}

/// @nodoc


class _TvSeries implements TvSeries {
  const _TvSeries({required this.id, required this.name, required this.voteAverage, this.posterPath, this.backdropPath});
  

@override final  int id;
@override final  String name;
@override final  double voteAverage;
@override final  String? posterPath;
@override final  String? backdropPath;

/// Create a copy of TvSeries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvSeriesCopyWith<_TvSeries> get copyWith => __$TvSeriesCopyWithImpl<_TvSeries>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeries&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,voteAverage,posterPath,backdropPath);

@override
String toString() {
  return 'TvSeries(id: $id, name: $name, voteAverage: $voteAverage, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class _$TvSeriesCopyWith<$Res> implements $TvSeriesCopyWith<$Res> {
  factory _$TvSeriesCopyWith(_TvSeries value, $Res Function(_TvSeries) _then) = __$TvSeriesCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double voteAverage, String? posterPath, String? backdropPath
});




}
/// @nodoc
class __$TvSeriesCopyWithImpl<$Res>
    implements _$TvSeriesCopyWith<$Res> {
  __$TvSeriesCopyWithImpl(this._self, this._then);

  final _TvSeries _self;
  final $Res Function(_TvSeries) _then;

/// Create a copy of TvSeries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? voteAverage = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_TvSeries(
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
