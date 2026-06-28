part of 'tv_series_details_bloc.dart';

@freezed
abstract class TvSeriesDetailsEvent with _$TvSeriesDetailsEvent {
  const factory TvSeriesDetailsEvent.getTvSeriesDetails(int id) = _GetTvSeriesDetails;
}