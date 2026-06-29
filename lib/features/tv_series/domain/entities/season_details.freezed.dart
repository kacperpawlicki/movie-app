// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SeasonDetails {

 int get id; String get name; String get overview; int get seasonNumber; double get voteAverage; String get airDate; List<Episode> get episodes; String? get posterPath;
/// Create a copy of SeasonDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeasonDetailsCopyWith<SeasonDetails> get copyWith => _$SeasonDetailsCopyWithImpl<SeasonDetails>(this as SeasonDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeasonDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&const DeepCollectionEquality().equals(other.episodes, episodes)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,overview,seasonNumber,voteAverage,airDate,const DeepCollectionEquality().hash(episodes),posterPath);

@override
String toString() {
  return 'SeasonDetails(id: $id, name: $name, overview: $overview, seasonNumber: $seasonNumber, voteAverage: $voteAverage, airDate: $airDate, episodes: $episodes, posterPath: $posterPath)';
}


}

/// @nodoc
abstract mixin class $SeasonDetailsCopyWith<$Res>  {
  factory $SeasonDetailsCopyWith(SeasonDetails value, $Res Function(SeasonDetails) _then) = _$SeasonDetailsCopyWithImpl;
@useResult
$Res call({
 int id, String name, String overview, int seasonNumber, double voteAverage, String airDate, List<Episode> episodes, String? posterPath
});




}
/// @nodoc
class _$SeasonDetailsCopyWithImpl<$Res>
    implements $SeasonDetailsCopyWith<$Res> {
  _$SeasonDetailsCopyWithImpl(this._self, this._then);

  final SeasonDetails _self;
  final $Res Function(SeasonDetails) _then;

/// Create a copy of SeasonDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? seasonNumber = null,Object? voteAverage = null,Object? airDate = null,Object? episodes = null,Object? posterPath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,seasonNumber: null == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,airDate: null == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String,episodes: null == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as List<Episode>,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SeasonDetails].
extension SeasonDetailsPatterns on SeasonDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeasonDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeasonDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeasonDetails value)  $default,){
final _that = this;
switch (_that) {
case _SeasonDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeasonDetails value)?  $default,){
final _that = this;
switch (_that) {
case _SeasonDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String overview,  int seasonNumber,  double voteAverage,  String airDate,  List<Episode> episodes,  String? posterPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeasonDetails() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.seasonNumber,_that.voteAverage,_that.airDate,_that.episodes,_that.posterPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String overview,  int seasonNumber,  double voteAverage,  String airDate,  List<Episode> episodes,  String? posterPath)  $default,) {final _that = this;
switch (_that) {
case _SeasonDetails():
return $default(_that.id,_that.name,_that.overview,_that.seasonNumber,_that.voteAverage,_that.airDate,_that.episodes,_that.posterPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String overview,  int seasonNumber,  double voteAverage,  String airDate,  List<Episode> episodes,  String? posterPath)?  $default,) {final _that = this;
switch (_that) {
case _SeasonDetails() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.seasonNumber,_that.voteAverage,_that.airDate,_that.episodes,_that.posterPath);case _:
  return null;

}
}

}

/// @nodoc


class _SeasonDetails implements SeasonDetails {
  const _SeasonDetails({required this.id, required this.name, required this.overview, required this.seasonNumber, required this.voteAverage, required this.airDate, required final  List<Episode> episodes, this.posterPath}): _episodes = episodes;
  

@override final  int id;
@override final  String name;
@override final  String overview;
@override final  int seasonNumber;
@override final  double voteAverage;
@override final  String airDate;
 final  List<Episode> _episodes;
@override List<Episode> get episodes {
  if (_episodes is EqualUnmodifiableListView) return _episodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episodes);
}

@override final  String? posterPath;

/// Create a copy of SeasonDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeasonDetailsCopyWith<_SeasonDetails> get copyWith => __$SeasonDetailsCopyWithImpl<_SeasonDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeasonDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&const DeepCollectionEquality().equals(other._episodes, _episodes)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,overview,seasonNumber,voteAverage,airDate,const DeepCollectionEquality().hash(_episodes),posterPath);

@override
String toString() {
  return 'SeasonDetails(id: $id, name: $name, overview: $overview, seasonNumber: $seasonNumber, voteAverage: $voteAverage, airDate: $airDate, episodes: $episodes, posterPath: $posterPath)';
}


}

/// @nodoc
abstract mixin class _$SeasonDetailsCopyWith<$Res> implements $SeasonDetailsCopyWith<$Res> {
  factory _$SeasonDetailsCopyWith(_SeasonDetails value, $Res Function(_SeasonDetails) _then) = __$SeasonDetailsCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String overview, int seasonNumber, double voteAverage, String airDate, List<Episode> episodes, String? posterPath
});




}
/// @nodoc
class __$SeasonDetailsCopyWithImpl<$Res>
    implements _$SeasonDetailsCopyWith<$Res> {
  __$SeasonDetailsCopyWithImpl(this._self, this._then);

  final _SeasonDetails _self;
  final $Res Function(_SeasonDetails) _then;

/// Create a copy of SeasonDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? seasonNumber = null,Object? voteAverage = null,Object? airDate = null,Object? episodes = null,Object? posterPath = freezed,}) {
  return _then(_SeasonDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,seasonNumber: null == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,airDate: null == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String,episodes: null == episodes ? _self._episodes : episodes // ignore: cast_nullable_to_non_nullable
as List<Episode>,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
