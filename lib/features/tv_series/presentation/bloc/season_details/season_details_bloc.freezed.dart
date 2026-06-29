// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SeasonDetailsEvent {

 int get seriesId; int get seasonNumber;
/// Create a copy of SeasonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeasonDetailsEventCopyWith<SeasonDetailsEvent> get copyWith => _$SeasonDetailsEventCopyWithImpl<SeasonDetailsEvent>(this as SeasonDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeasonDetailsEvent&&(identical(other.seriesId, seriesId) || other.seriesId == seriesId)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber));
}


@override
int get hashCode => Object.hash(runtimeType,seriesId,seasonNumber);

@override
String toString() {
  return 'SeasonDetailsEvent(seriesId: $seriesId, seasonNumber: $seasonNumber)';
}


}

/// @nodoc
abstract mixin class $SeasonDetailsEventCopyWith<$Res>  {
  factory $SeasonDetailsEventCopyWith(SeasonDetailsEvent value, $Res Function(SeasonDetailsEvent) _then) = _$SeasonDetailsEventCopyWithImpl;
@useResult
$Res call({
 int seriesId, int seasonNumber
});




}
/// @nodoc
class _$SeasonDetailsEventCopyWithImpl<$Res>
    implements $SeasonDetailsEventCopyWith<$Res> {
  _$SeasonDetailsEventCopyWithImpl(this._self, this._then);

  final SeasonDetailsEvent _self;
  final $Res Function(SeasonDetailsEvent) _then;

/// Create a copy of SeasonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seriesId = null,Object? seasonNumber = null,}) {
  return _then(_self.copyWith(
seriesId: null == seriesId ? _self.seriesId : seriesId // ignore: cast_nullable_to_non_nullable
as int,seasonNumber: null == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SeasonDetailsEvent].
extension SeasonDetailsEventPatterns on SeasonDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DetailsRequested value)?  detailsRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailsRequested() when detailsRequested != null:
return detailsRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DetailsRequested value)  detailsRequested,}){
final _that = this;
switch (_that) {
case _DetailsRequested():
return detailsRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DetailsRequested value)?  detailsRequested,}){
final _that = this;
switch (_that) {
case _DetailsRequested() when detailsRequested != null:
return detailsRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int seriesId,  int seasonNumber)?  detailsRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailsRequested() when detailsRequested != null:
return detailsRequested(_that.seriesId,_that.seasonNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int seriesId,  int seasonNumber)  detailsRequested,}) {final _that = this;
switch (_that) {
case _DetailsRequested():
return detailsRequested(_that.seriesId,_that.seasonNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int seriesId,  int seasonNumber)?  detailsRequested,}) {final _that = this;
switch (_that) {
case _DetailsRequested() when detailsRequested != null:
return detailsRequested(_that.seriesId,_that.seasonNumber);case _:
  return null;

}
}

}

/// @nodoc


class _DetailsRequested implements SeasonDetailsEvent {
  const _DetailsRequested(this.seriesId, this.seasonNumber);
  

@override final  int seriesId;
@override final  int seasonNumber;

/// Create a copy of SeasonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailsRequestedCopyWith<_DetailsRequested> get copyWith => __$DetailsRequestedCopyWithImpl<_DetailsRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailsRequested&&(identical(other.seriesId, seriesId) || other.seriesId == seriesId)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber));
}


@override
int get hashCode => Object.hash(runtimeType,seriesId,seasonNumber);

@override
String toString() {
  return 'SeasonDetailsEvent.detailsRequested(seriesId: $seriesId, seasonNumber: $seasonNumber)';
}


}

/// @nodoc
abstract mixin class _$DetailsRequestedCopyWith<$Res> implements $SeasonDetailsEventCopyWith<$Res> {
  factory _$DetailsRequestedCopyWith(_DetailsRequested value, $Res Function(_DetailsRequested) _then) = __$DetailsRequestedCopyWithImpl;
@override @useResult
$Res call({
 int seriesId, int seasonNumber
});




}
/// @nodoc
class __$DetailsRequestedCopyWithImpl<$Res>
    implements _$DetailsRequestedCopyWith<$Res> {
  __$DetailsRequestedCopyWithImpl(this._self, this._then);

  final _DetailsRequested _self;
  final $Res Function(_DetailsRequested) _then;

/// Create a copy of SeasonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seriesId = null,Object? seasonNumber = null,}) {
  return _then(_DetailsRequested(
null == seriesId ? _self.seriesId : seriesId // ignore: cast_nullable_to_non_nullable
as int,null == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SeasonDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeasonDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SeasonDetailsState()';
}


}

/// @nodoc
class $SeasonDetailsStateCopyWith<$Res>  {
$SeasonDetailsStateCopyWith(SeasonDetailsState _, $Res Function(SeasonDetailsState) __);
}


/// Adds pattern-matching-related methods to [SeasonDetailsState].
extension SeasonDetailsStatePatterns on SeasonDetailsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( SeasonDetails details)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.details);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( SeasonDetails details)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.details);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( SeasonDetails details)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.details);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements SeasonDetailsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SeasonDetailsState.loading()';
}


}




/// @nodoc


class _Loaded implements SeasonDetailsState {
  const _Loaded({required this.details});
  

 final  SeasonDetails details;

/// Create a copy of SeasonDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,details);

@override
String toString() {
  return 'SeasonDetailsState.loaded(details: $details)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $SeasonDetailsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 SeasonDetails details
});


$SeasonDetailsCopyWith<$Res> get details;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of SeasonDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? details = null,}) {
  return _then(_Loaded(
details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as SeasonDetails,
  ));
}

/// Create a copy of SeasonDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeasonDetailsCopyWith<$Res> get details {
  
  return $SeasonDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc


class _Error implements SeasonDetailsState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of SeasonDetailsState
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
  return 'SeasonDetailsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SeasonDetailsStateCopyWith<$Res> {
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

/// Create a copy of SeasonDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
