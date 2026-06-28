part of 'popular_tv_series_screen_bloc.dart';

@freezed
class PopularTvSeriesScreenState with _$PopularTvSeriesScreenState {
  const factory PopularTvSeriesScreenState.loading() = _Loading;
  const factory PopularTvSeriesScreenState.loaded({
    required List<TvSeries> tvSeries,
    required int currentPage,
    required bool hasReachedMax,
    @Default(false) bool isLoadingMore,
  }) = _Loaded;
  const factory PopularTvSeriesScreenState.error(String message) = _Error;
}
