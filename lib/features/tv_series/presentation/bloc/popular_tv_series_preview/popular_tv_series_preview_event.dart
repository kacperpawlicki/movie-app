part of 'popular_tv_series_preview_bloc.dart';

@freezed
class PopularTvSeriesPreviewEvent with _$PopularTvSeriesPreviewEvent {
  const factory PopularTvSeriesPreviewEvent.tvSeriesRequested() = _TvSeriesRequested;
}