// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TvSeriesDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesDetailsEvent()';
}


}

/// @nodoc
class $TvSeriesDetailsEventCopyWith<$Res>  {
$TvSeriesDetailsEventCopyWith(TvSeriesDetailsEvent _, $Res Function(TvSeriesDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [TvSeriesDetailsEvent].
extension TvSeriesDetailsEventPatterns on TvSeriesDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetTvSeriesDetails value)?  getTvSeriesDetails,TResult Function( _ToggleFavourite value)?  toggleFavourite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTvSeriesDetails() when getTvSeriesDetails != null:
return getTvSeriesDetails(_that);case _ToggleFavourite() when toggleFavourite != null:
return toggleFavourite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetTvSeriesDetails value)  getTvSeriesDetails,required TResult Function( _ToggleFavourite value)  toggleFavourite,}){
final _that = this;
switch (_that) {
case _GetTvSeriesDetails():
return getTvSeriesDetails(_that);case _ToggleFavourite():
return toggleFavourite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetTvSeriesDetails value)?  getTvSeriesDetails,TResult? Function( _ToggleFavourite value)?  toggleFavourite,}){
final _that = this;
switch (_that) {
case _GetTvSeriesDetails() when getTvSeriesDetails != null:
return getTvSeriesDetails(_that);case _ToggleFavourite() when toggleFavourite != null:
return toggleFavourite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  getTvSeriesDetails,TResult Function( TvSeriesDetails details)?  toggleFavourite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTvSeriesDetails() when getTvSeriesDetails != null:
return getTvSeriesDetails(_that.id);case _ToggleFavourite() when toggleFavourite != null:
return toggleFavourite(_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  getTvSeriesDetails,required TResult Function( TvSeriesDetails details)  toggleFavourite,}) {final _that = this;
switch (_that) {
case _GetTvSeriesDetails():
return getTvSeriesDetails(_that.id);case _ToggleFavourite():
return toggleFavourite(_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  getTvSeriesDetails,TResult? Function( TvSeriesDetails details)?  toggleFavourite,}) {final _that = this;
switch (_that) {
case _GetTvSeriesDetails() when getTvSeriesDetails != null:
return getTvSeriesDetails(_that.id);case _ToggleFavourite() when toggleFavourite != null:
return toggleFavourite(_that.details);case _:
  return null;

}
}

}

/// @nodoc


class _GetTvSeriesDetails implements TvSeriesDetailsEvent {
  const _GetTvSeriesDetails(this.id);
  

 final  int id;

/// Create a copy of TvSeriesDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTvSeriesDetailsCopyWith<_GetTvSeriesDetails> get copyWith => __$GetTvSeriesDetailsCopyWithImpl<_GetTvSeriesDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTvSeriesDetails&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TvSeriesDetailsEvent.getTvSeriesDetails(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetTvSeriesDetailsCopyWith<$Res> implements $TvSeriesDetailsEventCopyWith<$Res> {
  factory _$GetTvSeriesDetailsCopyWith(_GetTvSeriesDetails value, $Res Function(_GetTvSeriesDetails) _then) = __$GetTvSeriesDetailsCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$GetTvSeriesDetailsCopyWithImpl<$Res>
    implements _$GetTvSeriesDetailsCopyWith<$Res> {
  __$GetTvSeriesDetailsCopyWithImpl(this._self, this._then);

  final _GetTvSeriesDetails _self;
  final $Res Function(_GetTvSeriesDetails) _then;

/// Create a copy of TvSeriesDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetTvSeriesDetails(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ToggleFavourite implements TvSeriesDetailsEvent {
  const _ToggleFavourite(this.details);
  

 final  TvSeriesDetails details;

/// Create a copy of TvSeriesDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleFavouriteCopyWith<_ToggleFavourite> get copyWith => __$ToggleFavouriteCopyWithImpl<_ToggleFavourite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFavourite&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,details);

@override
String toString() {
  return 'TvSeriesDetailsEvent.toggleFavourite(details: $details)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavouriteCopyWith<$Res> implements $TvSeriesDetailsEventCopyWith<$Res> {
  factory _$ToggleFavouriteCopyWith(_ToggleFavourite value, $Res Function(_ToggleFavourite) _then) = __$ToggleFavouriteCopyWithImpl;
@useResult
$Res call({
 TvSeriesDetails details
});


$TvSeriesDetailsCopyWith<$Res> get details;

}
/// @nodoc
class __$ToggleFavouriteCopyWithImpl<$Res>
    implements _$ToggleFavouriteCopyWith<$Res> {
  __$ToggleFavouriteCopyWithImpl(this._self, this._then);

  final _ToggleFavourite _self;
  final $Res Function(_ToggleFavourite) _then;

/// Create a copy of TvSeriesDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? details = null,}) {
  return _then(_ToggleFavourite(
null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as TvSeriesDetails,
  ));
}

/// Create a copy of TvSeriesDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TvSeriesDetailsCopyWith<$Res> get details {
  
  return $TvSeriesDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc
mixin _$TvSeriesDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesDetailsState()';
}


}

/// @nodoc
class $TvSeriesDetailsStateCopyWith<$Res>  {
$TvSeriesDetailsStateCopyWith(TvSeriesDetailsState _, $Res Function(TvSeriesDetailsState) __);
}


/// Adds pattern-matching-related methods to [TvSeriesDetailsState].
extension TvSeriesDetailsStatePatterns on TvSeriesDetailsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( TvSeriesDetails details,  List<TvSeries> similarTvSeries,  bool isFavourite)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.details,_that.similarTvSeries,_that.isFavourite);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( TvSeriesDetails details,  List<TvSeries> similarTvSeries,  bool isFavourite)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.details,_that.similarTvSeries,_that.isFavourite);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( TvSeriesDetails details,  List<TvSeries> similarTvSeries,  bool isFavourite)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.details,_that.similarTvSeries,_that.isFavourite);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements TvSeriesDetailsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesDetailsState.loading()';
}


}




/// @nodoc


class _Loaded implements TvSeriesDetailsState {
  const _Loaded({required this.details, required final  List<TvSeries> similarTvSeries, required this.isFavourite}): _similarTvSeries = similarTvSeries;
  

 final  TvSeriesDetails details;
 final  List<TvSeries> _similarTvSeries;
 List<TvSeries> get similarTvSeries {
  if (_similarTvSeries is EqualUnmodifiableListView) return _similarTvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_similarTvSeries);
}

 final  bool isFavourite;

/// Create a copy of TvSeriesDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other._similarTvSeries, _similarTvSeries)&&(identical(other.isFavourite, isFavourite) || other.isFavourite == isFavourite));
}


@override
int get hashCode => Object.hash(runtimeType,details,const DeepCollectionEquality().hash(_similarTvSeries),isFavourite);

@override
String toString() {
  return 'TvSeriesDetailsState.loaded(details: $details, similarTvSeries: $similarTvSeries, isFavourite: $isFavourite)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $TvSeriesDetailsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 TvSeriesDetails details, List<TvSeries> similarTvSeries, bool isFavourite
});


$TvSeriesDetailsCopyWith<$Res> get details;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of TvSeriesDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? details = null,Object? similarTvSeries = null,Object? isFavourite = null,}) {
  return _then(_Loaded(
details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as TvSeriesDetails,similarTvSeries: null == similarTvSeries ? _self._similarTvSeries : similarTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,isFavourite: null == isFavourite ? _self.isFavourite : isFavourite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TvSeriesDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TvSeriesDetailsCopyWith<$Res> get details {
  
  return $TvSeriesDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc


class _Error implements TvSeriesDetailsState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of TvSeriesDetailsState
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
  return 'TvSeriesDetailsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $TvSeriesDetailsStateCopyWith<$Res> {
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

/// Create a copy of TvSeriesDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
