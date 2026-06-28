// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TvSeriesDetails {

 int get id; String get name; String get overview; double get voteAverage; int get voteCount; List<Genre> get genres; int get numberOfEpisodes; int get numberOfSeasons; List<Season> get seasons; String? get posterPath; String? get backdropPath;
/// Create a copy of TvSeriesDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvSeriesDetailsCopyWith<TvSeriesDetails> get copyWith => _$TvSeriesDetailsCopyWithImpl<TvSeriesDetails>(this as TvSeriesDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.numberOfEpisodes, numberOfEpisodes) || other.numberOfEpisodes == numberOfEpisodes)&&(identical(other.numberOfSeasons, numberOfSeasons) || other.numberOfSeasons == numberOfSeasons)&&const DeepCollectionEquality().equals(other.seasons, seasons)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,overview,voteAverage,voteCount,const DeepCollectionEquality().hash(genres),numberOfEpisodes,numberOfSeasons,const DeepCollectionEquality().hash(seasons),posterPath,backdropPath);

@override
String toString() {
  return 'TvSeriesDetails(id: $id, name: $name, overview: $overview, voteAverage: $voteAverage, voteCount: $voteCount, genres: $genres, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, seasons: $seasons, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class $TvSeriesDetailsCopyWith<$Res>  {
  factory $TvSeriesDetailsCopyWith(TvSeriesDetails value, $Res Function(TvSeriesDetails) _then) = _$TvSeriesDetailsCopyWithImpl;
@useResult
$Res call({
 int id, String name, String overview, double voteAverage, int voteCount, List<Genre> genres, int numberOfEpisodes, int numberOfSeasons, List<Season> seasons, String? posterPath, String? backdropPath
});




}
/// @nodoc
class _$TvSeriesDetailsCopyWithImpl<$Res>
    implements $TvSeriesDetailsCopyWith<$Res> {
  _$TvSeriesDetailsCopyWithImpl(this._self, this._then);

  final TvSeriesDetails _self;
  final $Res Function(TvSeriesDetails) _then;

/// Create a copy of TvSeriesDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? voteAverage = null,Object? voteCount = null,Object? genres = null,Object? numberOfEpisodes = null,Object? numberOfSeasons = null,Object? seasons = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>,numberOfEpisodes: null == numberOfEpisodes ? _self.numberOfEpisodes : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
as int,numberOfSeasons: null == numberOfSeasons ? _self.numberOfSeasons : numberOfSeasons // ignore: cast_nullable_to_non_nullable
as int,seasons: null == seasons ? _self.seasons : seasons // ignore: cast_nullable_to_non_nullable
as List<Season>,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TvSeriesDetails].
extension TvSeriesDetailsPatterns on TvSeriesDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvSeriesDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeriesDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvSeriesDetails value)  $default,){
final _that = this;
switch (_that) {
case _TvSeriesDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvSeriesDetails value)?  $default,){
final _that = this;
switch (_that) {
case _TvSeriesDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String overview,  double voteAverage,  int voteCount,  List<Genre> genres,  int numberOfEpisodes,  int numberOfSeasons,  List<Season> seasons,  String? posterPath,  String? backdropPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeriesDetails() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.voteAverage,_that.voteCount,_that.genres,_that.numberOfEpisodes,_that.numberOfSeasons,_that.seasons,_that.posterPath,_that.backdropPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String overview,  double voteAverage,  int voteCount,  List<Genre> genres,  int numberOfEpisodes,  int numberOfSeasons,  List<Season> seasons,  String? posterPath,  String? backdropPath)  $default,) {final _that = this;
switch (_that) {
case _TvSeriesDetails():
return $default(_that.id,_that.name,_that.overview,_that.voteAverage,_that.voteCount,_that.genres,_that.numberOfEpisodes,_that.numberOfSeasons,_that.seasons,_that.posterPath,_that.backdropPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String overview,  double voteAverage,  int voteCount,  List<Genre> genres,  int numberOfEpisodes,  int numberOfSeasons,  List<Season> seasons,  String? posterPath,  String? backdropPath)?  $default,) {final _that = this;
switch (_that) {
case _TvSeriesDetails() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.voteAverage,_that.voteCount,_that.genres,_that.numberOfEpisodes,_that.numberOfSeasons,_that.seasons,_that.posterPath,_that.backdropPath);case _:
  return null;

}
}

}

/// @nodoc


class _TvSeriesDetails implements TvSeriesDetails {
  const _TvSeriesDetails({required this.id, required this.name, required this.overview, required this.voteAverage, required this.voteCount, required final  List<Genre> genres, required this.numberOfEpisodes, required this.numberOfSeasons, required final  List<Season> seasons, this.posterPath, this.backdropPath}): _genres = genres,_seasons = seasons;
  

@override final  int id;
@override final  String name;
@override final  String overview;
@override final  double voteAverage;
@override final  int voteCount;
 final  List<Genre> _genres;
@override List<Genre> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override final  int numberOfEpisodes;
@override final  int numberOfSeasons;
 final  List<Season> _seasons;
@override List<Season> get seasons {
  if (_seasons is EqualUnmodifiableListView) return _seasons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seasons);
}

@override final  String? posterPath;
@override final  String? backdropPath;

/// Create a copy of TvSeriesDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvSeriesDetailsCopyWith<_TvSeriesDetails> get copyWith => __$TvSeriesDetailsCopyWithImpl<_TvSeriesDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeriesDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.numberOfEpisodes, numberOfEpisodes) || other.numberOfEpisodes == numberOfEpisodes)&&(identical(other.numberOfSeasons, numberOfSeasons) || other.numberOfSeasons == numberOfSeasons)&&const DeepCollectionEquality().equals(other._seasons, _seasons)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,overview,voteAverage,voteCount,const DeepCollectionEquality().hash(_genres),numberOfEpisodes,numberOfSeasons,const DeepCollectionEquality().hash(_seasons),posterPath,backdropPath);

@override
String toString() {
  return 'TvSeriesDetails(id: $id, name: $name, overview: $overview, voteAverage: $voteAverage, voteCount: $voteCount, genres: $genres, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, seasons: $seasons, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class _$TvSeriesDetailsCopyWith<$Res> implements $TvSeriesDetailsCopyWith<$Res> {
  factory _$TvSeriesDetailsCopyWith(_TvSeriesDetails value, $Res Function(_TvSeriesDetails) _then) = __$TvSeriesDetailsCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String overview, double voteAverage, int voteCount, List<Genre> genres, int numberOfEpisodes, int numberOfSeasons, List<Season> seasons, String? posterPath, String? backdropPath
});




}
/// @nodoc
class __$TvSeriesDetailsCopyWithImpl<$Res>
    implements _$TvSeriesDetailsCopyWith<$Res> {
  __$TvSeriesDetailsCopyWithImpl(this._self, this._then);

  final _TvSeriesDetails _self;
  final $Res Function(_TvSeriesDetails) _then;

/// Create a copy of TvSeriesDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? voteAverage = null,Object? voteCount = null,Object? genres = null,Object? numberOfEpisodes = null,Object? numberOfSeasons = null,Object? seasons = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_TvSeriesDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>,numberOfEpisodes: null == numberOfEpisodes ? _self.numberOfEpisodes : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
as int,numberOfSeasons: null == numberOfSeasons ? _self.numberOfSeasons : numberOfSeasons // ignore: cast_nullable_to_non_nullable
as int,seasons: null == seasons ? _self._seasons : seasons // ignore: cast_nullable_to_non_nullable
as List<Season>,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
