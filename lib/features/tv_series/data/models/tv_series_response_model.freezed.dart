// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TvSeriesResponseModel {

 int get page; List<TvSeriesModel> get results;
/// Create a copy of TvSeriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvSeriesResponseModelCopyWith<TvSeriesResponseModel> get copyWith => _$TvSeriesResponseModelCopyWithImpl<TvSeriesResponseModel>(this as TvSeriesResponseModel, _$identity);

  /// Serializes this TvSeriesResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesResponseModel&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'TvSeriesResponseModel(page: $page, results: $results)';
}


}

/// @nodoc
abstract mixin class $TvSeriesResponseModelCopyWith<$Res>  {
  factory $TvSeriesResponseModelCopyWith(TvSeriesResponseModel value, $Res Function(TvSeriesResponseModel) _then) = _$TvSeriesResponseModelCopyWithImpl;
@useResult
$Res call({
 int page, List<TvSeriesModel> results
});




}
/// @nodoc
class _$TvSeriesResponseModelCopyWithImpl<$Res>
    implements $TvSeriesResponseModelCopyWith<$Res> {
  _$TvSeriesResponseModelCopyWithImpl(this._self, this._then);

  final TvSeriesResponseModel _self;
  final $Res Function(TvSeriesResponseModel) _then;

/// Create a copy of TvSeriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? results = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<TvSeriesModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TvSeriesResponseModel].
extension TvSeriesResponseModelPatterns on TvSeriesResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvSeriesResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeriesResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvSeriesResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _TvSeriesResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvSeriesResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _TvSeriesResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  List<TvSeriesModel> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeriesResponseModel() when $default != null:
return $default(_that.page,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  List<TvSeriesModel> results)  $default,) {final _that = this;
switch (_that) {
case _TvSeriesResponseModel():
return $default(_that.page,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  List<TvSeriesModel> results)?  $default,) {final _that = this;
switch (_that) {
case _TvSeriesResponseModel() when $default != null:
return $default(_that.page,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TvSeriesResponseModel implements TvSeriesResponseModel {
  const _TvSeriesResponseModel({required this.page, required final  List<TvSeriesModel> results}): _results = results;
  factory _TvSeriesResponseModel.fromJson(Map<String, dynamic> json) => _$TvSeriesResponseModelFromJson(json);

@override final  int page;
 final  List<TvSeriesModel> _results;
@override List<TvSeriesModel> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of TvSeriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvSeriesResponseModelCopyWith<_TvSeriesResponseModel> get copyWith => __$TvSeriesResponseModelCopyWithImpl<_TvSeriesResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvSeriesResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeriesResponseModel&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'TvSeriesResponseModel(page: $page, results: $results)';
}


}

/// @nodoc
abstract mixin class _$TvSeriesResponseModelCopyWith<$Res> implements $TvSeriesResponseModelCopyWith<$Res> {
  factory _$TvSeriesResponseModelCopyWith(_TvSeriesResponseModel value, $Res Function(_TvSeriesResponseModel) _then) = __$TvSeriesResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int page, List<TvSeriesModel> results
});




}
/// @nodoc
class __$TvSeriesResponseModelCopyWithImpl<$Res>
    implements _$TvSeriesResponseModelCopyWith<$Res> {
  __$TvSeriesResponseModelCopyWithImpl(this._self, this._then);

  final _TvSeriesResponseModel _self;
  final $Res Function(_TvSeriesResponseModel) _then;

/// Create a copy of TvSeriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? results = null,}) {
  return _then(_TvSeriesResponseModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<TvSeriesModel>,
  ));
}


}

// dart format on
