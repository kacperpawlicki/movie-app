part of 'popular_tv_series_screen_bloc.dart';

@freezed
class PopularTvSeriesScreenEvent with _$PopularTvSeriesScreenEvent {
  const factory PopularTvSeriesScreenEvent.started() = _Started;
  const factory PopularTvSeriesScreenEvent.nextPageRequested() =
      _NextPageRequested;
}
