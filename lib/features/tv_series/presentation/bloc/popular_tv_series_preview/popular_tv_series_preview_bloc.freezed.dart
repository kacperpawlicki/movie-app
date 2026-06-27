// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_tv_series_preview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PopularTvSeriesPreviewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularTvSeriesPreviewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PopularTvSeriesPreviewEvent()';
}


}

/// @nodoc
class $PopularTvSeriesPreviewEventCopyWith<$Res>  {
$PopularTvSeriesPreviewEventCopyWith(PopularTvSeriesPreviewEvent _, $Res Function(PopularTvSeriesPreviewEvent) __);
}


/// Adds pattern-matching-related methods to [PopularTvSeriesPreviewEvent].
extension PopularTvSeriesPreviewEventPatterns on PopularTvSeriesPreviewEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TvSeriesRequested value)?  tvSeriesRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeriesRequested() when tvSeriesRequested != null:
return tvSeriesRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TvSeriesRequested value)  tvSeriesRequested,}){
final _that = this;
switch (_that) {
case _TvSeriesRequested():
return tvSeriesRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TvSeriesRequested value)?  tvSeriesRequested,}){
final _that = this;
switch (_that) {
case _TvSeriesRequested() when tvSeriesRequested != null:
return tvSeriesRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  tvSeriesRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeriesRequested() when tvSeriesRequested != null:
return tvSeriesRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  tvSeriesRequested,}) {final _that = this;
switch (_that) {
case _TvSeriesRequested():
return tvSeriesRequested();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  tvSeriesRequested,}) {final _that = this;
switch (_that) {
case _TvSeriesRequested() when tvSeriesRequested != null:
return tvSeriesRequested();case _:
  return null;

}
}

}

/// @nodoc


class _TvSeriesRequested implements PopularTvSeriesPreviewEvent {
  const _TvSeriesRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeriesRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PopularTvSeriesPreviewEvent.tvSeriesRequested()';
}


}




/// @nodoc
mixin _$PopularTvSeriesPreviewState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularTvSeriesPreviewState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PopularTvSeriesPreviewState()';
}


}

/// @nodoc
class $PopularTvSeriesPreviewStateCopyWith<$Res>  {
$PopularTvSeriesPreviewStateCopyWith(PopularTvSeriesPreviewState _, $Res Function(PopularTvSeriesPreviewState) __);
}


/// Adds pattern-matching-related methods to [PopularTvSeriesPreviewState].
extension PopularTvSeriesPreviewStatePatterns on PopularTvSeriesPreviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<TvSeries> tvSeries)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.tvSeries);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<TvSeries> tvSeries)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.tvSeries);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<TvSeries> tvSeries)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.tvSeries);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements PopularTvSeriesPreviewState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PopularTvSeriesPreviewState.loading()';
}


}




/// @nodoc


class _Loaded implements PopularTvSeriesPreviewState {
  const _Loaded({required final  List<TvSeries> tvSeries}): _tvSeries = tvSeries;
  

 final  List<TvSeries> _tvSeries;
 List<TvSeries> get tvSeries {
  if (_tvSeries is EqualUnmodifiableListView) return _tvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tvSeries);
}


/// Create a copy of PopularTvSeriesPreviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._tvSeries, _tvSeries));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tvSeries));

@override
String toString() {
  return 'PopularTvSeriesPreviewState.loaded(tvSeries: $tvSeries)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $PopularTvSeriesPreviewStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<TvSeries> tvSeries
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of PopularTvSeriesPreviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tvSeries = null,}) {
  return _then(_Loaded(
tvSeries: null == tvSeries ? _self._tvSeries : tvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,
  ));
}


}

/// @nodoc


class _Error implements PopularTvSeriesPreviewState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of PopularTvSeriesPreviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PopularTvSeriesPreviewState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $PopularTvSeriesPreviewStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of PopularTvSeriesPreviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
