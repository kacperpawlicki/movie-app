// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetailsModel {

 int get id; String get title; String get overview;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount; int get runtime; List<GenreModel> get genres;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'backdrop_path') String? get backdropPath;
/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith => _$MovieDetailsModelCopyWithImpl<MovieDetailsModel>(this as MovieDetailsModel, _$identity);

  /// Serializes this MovieDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,overview,voteAverage,voteCount,runtime,const DeepCollectionEquality().hash(genres),posterPath,backdropPath);

@override
String toString() {
  return 'MovieDetailsModel(id: $id, title: $title, overview: $overview, voteAverage: $voteAverage, voteCount: $voteCount, runtime: $runtime, genres: $genres, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsModelCopyWith<$Res>  {
  factory $MovieDetailsModelCopyWith(MovieDetailsModel value, $Res Function(MovieDetailsModel) _then) = _$MovieDetailsModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String overview,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount, int runtime, List<GenreModel> genres,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath
});




}
/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._self, this._then);

  final MovieDetailsModel _self;
  final $Res Function(MovieDetailsModel) _then;

/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? overview = null,Object? voteAverage = null,Object? voteCount = null,Object? runtime = null,Object? genres = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailsModel].
extension MovieDetailsModelPatterns on MovieDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String overview, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  int runtime,  List<GenreModel> genres, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailsModel() when $default != null:
return $default(_that.id,_that.title,_that.overview,_that.voteAverage,_that.voteCount,_that.runtime,_that.genres,_that.posterPath,_that.backdropPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String overview, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  int runtime,  List<GenreModel> genres, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsModel():
return $default(_that.id,_that.title,_that.overview,_that.voteAverage,_that.voteCount,_that.runtime,_that.genres,_that.posterPath,_that.backdropPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String overview, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  int runtime,  List<GenreModel> genres, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsModel() when $default != null:
return $default(_that.id,_that.title,_that.overview,_that.voteAverage,_that.voteCount,_that.runtime,_that.genres,_that.posterPath,_that.backdropPath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDetailsModel implements MovieDetailsModel {
  const _MovieDetailsModel({required this.id, required this.title, required this.overview, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'vote_count') required this.voteCount, required this.runtime, required final  List<GenreModel> genres, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'backdrop_path') this.backdropPath}): _genres = genres;
  factory _MovieDetailsModel.fromJson(Map<String, dynamic> json) => _$MovieDetailsModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String overview;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;
@override final  int runtime;
 final  List<GenreModel> _genres;
@override List<GenreModel> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;

/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsModelCopyWith<_MovieDetailsModel> get copyWith => __$MovieDetailsModelCopyWithImpl<_MovieDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,overview,voteAverage,voteCount,runtime,const DeepCollectionEquality().hash(_genres),posterPath,backdropPath);

@override
String toString() {
  return 'MovieDetailsModel(id: $id, title: $title, overview: $overview, voteAverage: $voteAverage, voteCount: $voteCount, runtime: $runtime, genres: $genres, posterPath: $posterPath, backdropPath: $backdropPath)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsModelCopyWith<$Res> implements $MovieDetailsModelCopyWith<$Res> {
  factory _$MovieDetailsModelCopyWith(_MovieDetailsModel value, $Res Function(_MovieDetailsModel) _then) = __$MovieDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String overview,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount, int runtime, List<GenreModel> genres,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath
});




}
/// @nodoc
class __$MovieDetailsModelCopyWithImpl<$Res>
    implements _$MovieDetailsModelCopyWith<$Res> {
  __$MovieDetailsModelCopyWithImpl(this._self, this._then);

  final _MovieDetailsModel _self;
  final $Res Function(_MovieDetailsModel) _then;

/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? overview = null,Object? voteAverage = null,Object? voteCount = null,Object? runtime = null,Object? genres = null,Object? posterPath = freezed,Object? backdropPath = freezed,}) {
  return _then(_MovieDetailsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
