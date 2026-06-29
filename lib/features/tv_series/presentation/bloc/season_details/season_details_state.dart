part of 'season_details_bloc.dart';

@freezed
abstract class SeasonDetailsState with _$SeasonDetailsState {
  const factory SeasonDetailsState.loading() = _Loading;
  const factory SeasonDetailsState.loaded({required SeasonDetails details}) =
      _Loaded;
  const factory SeasonDetailsState.error(String message) = _Error;
}
