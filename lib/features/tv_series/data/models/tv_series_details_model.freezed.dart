// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TvSeriesDetailsModel {

 int get id; String get name; String get overview;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount; List<GenreModel> get genres;@JsonKey(name: 'number_of_episodes') int get numberOfEpisodes;@JsonKey(name: 'number_of_seasons') int get numberOfSeasons; List<SeasonModel> get seasons;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'backdrop_path') String? get backdropPath;
/// Create a copy of TvSeriesDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvSeriesDetailsModelCopyWith<TvSeriesDetailsModel> get copyWith => _$TvSeriesDetailsModelCopyWithImpl<TvSeriesDetailsModel>(this as TvSeriesDetailsModel, _$identity);

  /// Serializes this TvSeriesDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.numberOfEpisodes, numberOfEpisodes) || other.numberOfEpisodes == numberOfEpisodes)&&(identical(other.numberOfSeasons, numberOfSeasons) || other.numberOfSeasons == numberOfSeasons)&&const DeepCollectionEquality().equals(other.seasons, seasons)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,overview,voteAverage,voteCount,const DeepCollectionEquality().hash(genres),numberOfEpisodes,numberOfSeasons,const DeepCollectionEquality().hash(seasons),posterPath,backdropPath);

@override
String toString() {
  return 'TvSeriesDetailsModel(id: $id, name: $name, overview: $overview, voteAverage: $voteAverage, voteCount: $voteCount, genres: $genres, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, seasons: $seasons, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class $TvSeriesDetailsModelCopyWith<$Res>  {
  factory $TvSeriesDetailsModelCopyWith(TvSeriesDetailsModel value, $Res Function(TvSeriesDetailsModel) _then) = _$TvSeriesDetailsModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String overview,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount, List<GenreModel> genres,@JsonKey(name: 'number_of_episodes') int numberOfEpisodes,@JsonKey(name: 'number_of_seasons') int numberOfSeasons, List<SeasonModel> seasons,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath
});




}
/// @nodoc
class _$TvSeriesDetailsModelCopyWithImpl<$Res>
    implements $TvSeriesDetailsModelCopyWith<$Res> {
  _$TvSeriesDetailsModelCopyWithImpl(this._self, this._then);

  final TvSeriesDetailsModel _self;
  final $Res Function(TvSeriesDetailsModel) _then;

/// Create a copy of TvSeriesDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? voteAverage = null,Object? voteCount = null,Object? genres = null,Object? numberOfEpisodes = null,Object? numberOfSeasons = null,Object? seasons = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>,numberOfEpisodes: null == numberOfEpisodes ? _self.numberOfEpisodes : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
as int,numberOfSeasons: null == numberOfSeasons ? _self.numberOfSeasons : numberOfSeasons // ignore: cast_nullable_to_non_nullable
as int,seasons: null == seasons ? _self.seasons : seasons // ignore: cast_nullable_to_non_nullable
as List<SeasonModel>,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TvSeriesDetailsModel].
extension TvSeriesDetailsModelPatterns on TvSeriesDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvSeriesDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeriesDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvSeriesDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _TvSeriesDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvSeriesDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _TvSeriesDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String overview, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  List<GenreModel> genres, @JsonKey(name: 'number_of_episodes')  int numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int numberOfSeasons,  List<SeasonModel> seasons, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeriesDetailsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String overview, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  List<GenreModel> genres, @JsonKey(name: 'number_of_episodes')  int numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int numberOfSeasons,  List<SeasonModel> seasons, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)  $default,) {final _that = this;
switch (_that) {
case _TvSeriesDetailsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String overview, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  List<GenreModel> genres, @JsonKey(name: 'number_of_episodes')  int numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int numberOfSeasons,  List<SeasonModel> seasons, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)?  $default,) {final _that = this;
switch (_that) {
case _TvSeriesDetailsModel() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.voteAverage,_that.voteCount,_that.genres,_that.numberOfEpisodes,_that.numberOfSeasons,_that.seasons,_that.posterPath,_that.backdropPath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TvSeriesDetailsModel implements TvSeriesDetailsModel {
  const _TvSeriesDetailsModel({required this.id, required this.name, required this.overview, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'vote_count') required this.voteCount, required final  List<GenreModel> genres, @JsonKey(name: 'number_of_episodes') required this.numberOfEpisodes, @JsonKey(name: 'number_of_seasons') required this.numberOfSeasons, required final  List<SeasonModel> seasons, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'backdrop_path') this.backdropPath}): _genres = genres,_seasons = seasons;
  factory _TvSeriesDetailsModel.fromJson(Map<String, dynamic> json) => _$TvSeriesDetailsModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String overview;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;
 final  List<GenreModel> _genres;
@override List<GenreModel> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override@JsonKey(name: 'number_of_episodes') final  int numberOfEpisodes;
@override@JsonKey(name: 'number_of_seasons') final  int numberOfSeasons;
 final  List<SeasonModel> _seasons;
@override List<SeasonModel> get seasons {
  if (_seasons is EqualUnmodifiableListView) return _seasons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seasons);
}

@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;

/// Create a copy of TvSeriesDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvSeriesDetailsModelCopyWith<_TvSeriesDetailsModel> get copyWith => __$TvSeriesDetailsModelCopyWithImpl<_TvSeriesDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvSeriesDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeriesDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.numberOfEpisodes, numberOfEpisodes) || other.numberOfEpisodes == numberOfEpisodes)&&(identical(other.numberOfSeasons, numberOfSeasons) || other.numberOfSeasons == numberOfSeasons)&&const DeepCollectionEquality().equals(other._seasons, _seasons)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,overview,voteAverage,voteCount,const DeepCollectionEquality().hash(_genres),numberOfEpisodes,numberOfSeasons,const DeepCollectionEquality().hash(_seasons),posterPath,backdropPath);

@override
String toString() {
  return 'TvSeriesDetailsModel(id: $id, name: $name, overview: $overview, voteAverage: $voteAverage, voteCount: $voteCount, genres: $genres, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, seasons: $seasons, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class _$TvSeriesDetailsModelCopyWith<$Res> implements $TvSeriesDetailsModelCopyWith<$Res> {
  factory _$TvSeriesDetailsModelCopyWith(_TvSeriesDetailsModel value, $Res Function(_TvSeriesDetailsModel) _then) = __$TvSeriesDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String overview,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount, List<GenreModel> genres,@JsonKey(name: 'number_of_episodes') int numberOfEpisodes,@JsonKey(name: 'number_of_seasons') int numberOfSeasons, List<SeasonModel> seasons,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath
});




}
/// @nodoc
class __$TvSeriesDetailsModelCopyWithImpl<$Res>
    implements _$TvSeriesDetailsModelCopyWith<$Res> {
  __$TvSeriesDetailsModelCopyWithImpl(this._self, this._then);

  final _TvSeriesDetailsModel _self;
  final $Res Function(_TvSeriesDetailsModel) _then;

/// Create a copy of TvSeriesDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? voteAverage = null,Object? voteCount = null,Object? genres = null,Object? numberOfEpisodes = null,Object? numberOfSeasons = null,Object? seasons = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_TvSeriesDetailsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>,numberOfEpisodes: null == numberOfEpisodes ? _self.numberOfEpisodes : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
as int,numberOfSeasons: null == numberOfSeasons ? _self.numberOfSeasons : numberOfSeasons // ignore: cast_nullable_to_non_nullable
as int,seasons: null == seasons ? _self._seasons : seasons // ignore: cast_nullable_to_non_nullable
as List<SeasonModel>,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
