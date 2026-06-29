part of 'season_details_bloc.dart';

@freezed
abstract class SeasonDetailsEvent with _$SeasonDetailsEvent {
  const factory SeasonDetailsEvent.detailsRequested(
    int seriesId,
    int seasonNumber,
  ) = _DetailsRequested;
}
