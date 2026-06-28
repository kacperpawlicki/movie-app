import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series_details.dart';
import 'package:movie_app/features/tv_series/domain/usecases/get_tv_series_details_usecase.dart';

part 'tv_series_details_event.dart';
part 'tv_series_details_state.dart';
part 'tv_series_details_bloc.freezed.dart';

@injectable
class TvSeriesDetailsBloc extends Bloc<TvSeriesDetailsEvent, TvSeriesDetailsState> {
  final GetTvSeriesDetailsUsecase _getTvSeriesDetailsUsecase;

  TvSeriesDetailsBloc(this._getTvSeriesDetailsUsecase) : super(_Loading()) {
    on<_GetTvSeriesDetails>((event, emit) async {
      emit(TvSeriesDetailsState.loading());
      try {
        final details = await _getTvSeriesDetailsUsecase(event.id);
        emit(
          TvSeriesDetailsState.loaded(
            details: details
          ),
        );
      } catch (e) {
        emit(TvSeriesDetailsState.error(e.toString()));
      }
    });
  }
}
