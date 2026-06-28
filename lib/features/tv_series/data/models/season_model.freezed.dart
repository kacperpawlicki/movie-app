// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeasonModel {

 int get id; String get name; String get overview;@JsonKey(name: 'season_number') int get seasonNumber;@JsonKey(name: 'episode_count') int get episodeCount;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'poster_path') String? get posterPath;
/// Create a copy of SeasonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeasonModelCopyWith<SeasonModel> get copyWith => _$SeasonModelCopyWithImpl<SeasonModel>(this as SeasonModel, _$identity);

  /// Serializes this SeasonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeasonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.episodeCount, episodeCount) || other.episodeCount == episodeCount)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,overview,seasonNumber,episodeCount,voteAverage,posterPath);

@override
String toString() {
  return 'SeasonModel(id: $id, name: $name, overview: $overview, seasonNumber: $seasonNumber, episodeCount: $episodeCount, voteAverage: $voteAverage, posterPath: $posterPath)';
}


}

/// @nodoc
abstract mixin class $SeasonModelCopyWith<$Res>  {
  factory $SeasonModelCopyWith(SeasonModel value, $Res Function(SeasonModel) _then) = _$SeasonModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String overview,@JsonKey(name: 'season_number') int seasonNumber,@JsonKey(name: 'episode_count') int episodeCount,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'poster_path') String? posterPath
});




}
/// @nodoc
class _$SeasonModelCopyWithImpl<$Res>
    implements $SeasonModelCopyWith<$Res> {
  _$SeasonModelCopyWithImpl(this._self, this._then);

  final SeasonModel _self;
  final $Res Function(SeasonModel) _then;

/// Create a copy of SeasonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? seasonNumber = null,Object? episodeCount = null,Object? voteAverage = null,Object? posterPath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,seasonNumber: null == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int,episodeCount: null == episodeCount ? _self.episodeCount : episodeCount // ignore: cast_nullable_to_non_nullable
as int,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SeasonModel].
extension SeasonModelPatterns on SeasonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeasonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeasonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeasonModel value)  $default,){
final _that = this;
switch (_that) {
case _SeasonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeasonModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeasonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String overview, @JsonKey(name: 'season_number')  int seasonNumber, @JsonKey(name: 'episode_count')  int episodeCount, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'poster_path')  String? posterPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeasonModel() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.seasonNumber,_that.episodeCount,_that.voteAverage,_that.posterPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String overview, @JsonKey(name: 'season_number')  int seasonNumber, @JsonKey(name: 'episode_count')  int episodeCount, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'poster_path')  String? posterPath)  $default,) {final _that = this;
switch (_that) {
case _SeasonModel():
return $default(_that.id,_that.name,_that.overview,_that.seasonNumber,_that.episodeCount,_that.voteAverage,_that.posterPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String overview, @JsonKey(name: 'season_number')  int seasonNumber, @JsonKey(name: 'episode_count')  int episodeCount, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'poster_path')  String? posterPath)?  $default,) {final _that = this;
switch (_that) {
case _SeasonModel() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.seasonNumber,_that.episodeCount,_that.voteAverage,_that.posterPath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeasonModel implements SeasonModel {
  const _SeasonModel({required this.id, required this.name, required this.overview, @JsonKey(name: 'season_number') required this.seasonNumber, @JsonKey(name: 'episode_count') required this.episodeCount, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'poster_path') this.posterPath});
  factory _SeasonModel.fromJson(Map<String, dynamic> json) => _$SeasonModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String overview;
@override@JsonKey(name: 'season_number') final  int seasonNumber;
@override@JsonKey(name: 'episode_count') final  int episodeCount;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'poster_path') final  String? posterPath;

/// Create a copy of SeasonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeasonModelCopyWith<_SeasonModel> get copyWith => __$SeasonModelCopyWithImpl<_SeasonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeasonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeasonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.episodeCount, episodeCount) || other.episodeCount == episodeCount)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,overview,seasonNumber,episodeCount,voteAverage,posterPath);

@override
String toString() {
  return 'SeasonModel(id: $id, name: $name, overview: $overview, seasonNumber: $seasonNumber, episodeCount: $episodeCount, voteAverage: $voteAverage, posterPath: $posterPath)';
}


}

/// @nodoc
abstract mixin class _$SeasonModelCopyWith<$Res> implements $SeasonModelCopyWith<$Res> {
  factory _$SeasonModelCopyWith(_SeasonModel value, $Res Function(_SeasonModel) _then) = __$SeasonModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String overview,@JsonKey(name: 'season_number') int seasonNumber,@JsonKey(name: 'episode_count') int episodeCount,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'poster_path') String? posterPath
});




}
/// @nodoc
class __$SeasonModelCopyWithImpl<$Res>
    implements _$SeasonModelCopyWith<$Res> {
  __$SeasonModelCopyWithImpl(this._self, this._then);

  final _SeasonModel _self;
  final $Res Function(_SeasonModel) _then;

/// Create a copy of SeasonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? seasonNumber = null,Object? episodeCount = null,Object? voteAverage = null,Object? posterPath = freezed,}) {
  return _then(_SeasonModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,seasonNumber: null == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int,episodeCount: null == episodeCount ? _self.episodeCount : episodeCount // ignore: cast_nullable_to_non_nullable
as int,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
