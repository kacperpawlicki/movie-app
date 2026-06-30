// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsEvent()';
}


}

/// @nodoc
class $MovieDetailsEventCopyWith<$Res>  {
$MovieDetailsEventCopyWith(MovieDetailsEvent _, $Res Function(MovieDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [MovieDetailsEvent].
extension MovieDetailsEventPatterns on MovieDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ToggleFavourite value)?  toggleFavourite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ToggleFavourite() when toggleFavourite != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ToggleFavourite value)  toggleFavourite,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ToggleFavourite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ToggleFavourite value)?  toggleFavourite,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ToggleFavourite() when toggleFavourite != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  started,TResult Function( MovieDetails details)?  toggleFavourite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _ToggleFavourite() when toggleFavourite != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  started,required TResult Function( MovieDetails details)  toggleFavourite,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _ToggleFavourite():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  started,TResult? Function( MovieDetails details)?  toggleFavourite,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _ToggleFavourite() when toggleFavourite != null:
return toggleFavourite(_that.details);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MovieDetailsEvent {
  const _Started(this.id);
  

 final  int id;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MovieDetailsEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $MovieDetailsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ToggleFavourite implements MovieDetailsEvent {
  const _ToggleFavourite(this.details);
  

 final  MovieDetails details;

/// Create a copy of MovieDetailsEvent
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
  return 'MovieDetailsEvent.toggleFavourite(details: $details)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavouriteCopyWith<$Res> implements $MovieDetailsEventCopyWith<$Res> {
  factory _$ToggleFavouriteCopyWith(_ToggleFavourite value, $Res Function(_ToggleFavourite) _then) = __$ToggleFavouriteCopyWithImpl;
@useResult
$Res call({
 MovieDetails details
});


$MovieDetailsCopyWith<$Res> get details;

}
/// @nodoc
class __$ToggleFavouriteCopyWithImpl<$Res>
    implements _$ToggleFavouriteCopyWith<$Res> {
  __$ToggleFavouriteCopyWithImpl(this._self, this._then);

  final _ToggleFavourite _self;
  final $Res Function(_ToggleFavourite) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? details = null,}) {
  return _then(_ToggleFavourite(
null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as MovieDetails,
  ));
}

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieDetailsCopyWith<$Res> get details {
  
  return $MovieDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc
mixin _$MovieDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsState()';
}


}

/// @nodoc
class $MovieDetailsStateCopyWith<$Res>  {
$MovieDetailsStateCopyWith(MovieDetailsState _, $Res Function(MovieDetailsState) __);
}


/// Adds pattern-matching-related methods to [MovieDetailsState].
extension MovieDetailsStatePatterns on MovieDetailsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( MovieDetails details,  List<Movie> similarMovies,  bool isFavourite)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.details,_that.similarMovies,_that.isFavourite);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( MovieDetails details,  List<Movie> similarMovies,  bool isFavourite)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.details,_that.similarMovies,_that.isFavourite);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( MovieDetails details,  List<Movie> similarMovies,  bool isFavourite)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.details,_that.similarMovies,_that.isFavourite);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements MovieDetailsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsState.loading()';
}


}




/// @nodoc


class _Loaded implements MovieDetailsState {
  const _Loaded({required this.details, required final  List<Movie> similarMovies, required this.isFavourite}): _similarMovies = similarMovies;
  

 final  MovieDetails details;
 final  List<Movie> _similarMovies;
 List<Movie> get similarMovies {
  if (_similarMovies is EqualUnmodifiableListView) return _similarMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_similarMovies);
}

 final  bool isFavourite;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other._similarMovies, _similarMovies)&&(identical(other.isFavourite, isFavourite) || other.isFavourite == isFavourite));
}


@override
int get hashCode => Object.hash(runtimeType,details,const DeepCollectionEquality().hash(_similarMovies),isFavourite);

@override
String toString() {
  return 'MovieDetailsState.loaded(details: $details, similarMovies: $similarMovies, isFavourite: $isFavourite)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $MovieDetailsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 MovieDetails details, List<Movie> similarMovies, bool isFavourite
});


$MovieDetailsCopyWith<$Res> get details;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? details = null,Object? similarMovies = null,Object? isFavourite = null,}) {
  return _then(_Loaded(
details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as MovieDetails,similarMovies: null == similarMovies ? _self._similarMovies : similarMovies // ignore: cast_nullable_to_non_nullable
as List<Movie>,isFavourite: null == isFavourite ? _self.isFavourite : isFavourite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieDetailsCopyWith<$Res> get details {
  
  return $MovieDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc


class _Error implements MovieDetailsState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of MovieDetailsState
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
  return 'MovieDetailsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $MovieDetailsStateCopyWith<$Res> {
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

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
