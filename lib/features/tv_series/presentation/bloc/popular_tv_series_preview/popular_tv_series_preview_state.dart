part of 'popular_tv_series_preview_bloc.dart';

@freezed
class PopularTvSeriesPreviewState with _$PopularTvSeriesPreviewState {
  const factory PopularTvSeriesPreviewState.loading() = _Loading;
  const factory PopularTvSeriesPreviewState.loaded({
    required List<TvSeries> tvSeries
  }) = _Loaded;
  const factory PopularTvSeriesPreviewState.error(String message) = _Error;
}
