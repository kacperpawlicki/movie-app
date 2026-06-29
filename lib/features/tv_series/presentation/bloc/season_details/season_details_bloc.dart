import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/domain/entities/season_details.dart';
import 'package:movie_app/features/tv_series/domain/usecases/get_season_details_usecase.dart';

part 'season_details_event.dart';
part 'season_details_state.dart';
part 'season_details_bloc.freezed.dart';

@injectable
class SeasonDetailsBloc extends Bloc<SeasonDetailsEvent, SeasonDetailsState> {
  final GetSeasonDetailsUsecase _getSeasonDetailsUsecase;

  SeasonDetailsBloc(this._getSeasonDetailsUsecase) : super(_Loading()) {
    on<_DetailsRequested>((event, emit) async {
      emit(SeasonDetailsState.loading());
      try {
        final details = await _getSeasonDetailsUsecase(
          seriesId: event.seriesId,
          seasonNumber: event.seasonNumber,
        );
        emit(SeasonDetailsState.loaded(details: details));
      } catch (e) {
        emit(SeasonDetailsState.error(e.toString()));
      }
    });
  }
}
