part of 'tv_series_details_bloc.dart';

@freezed
abstract class TvSeriesDetailsState with _$TvSeriesDetailsState {
  const factory TvSeriesDetailsState.loading() = _Loading;
  const factory TvSeriesDetailsState.loaded({
    required TvSeriesDetails details,
  }) = _Loaded;
  const factory TvSeriesDetailsState.error(String message) = _Error;
}
