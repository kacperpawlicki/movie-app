import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';
import 'package:movie_app/features/tv_series/domain/usecases/get_popular_tv_series_usecase.dart';

part 'popular_tv_series_preview_event.dart';
part 'popular_tv_series_preview_state.dart';
part 'popular_tv_series_preview_bloc.freezed.dart';

@injectable
class PopularTvSeriesPreviewBloc extends Bloc<PopularTvSeriesPreviewEvent, PopularTvSeriesPreviewState> {
  
  final GetPopularTvSeriesUseCase _getPopularTvSeriesUseCase;
  
  PopularTvSeriesPreviewBloc(this._getPopularTvSeriesUseCase) : super(_Loading()) {
    on<_TvSeriesRequested>((event, emit) async {
      emit(PopularTvSeriesPreviewState.loading());
      try {
        final tvSeries = await _getPopularTvSeriesUseCase(1);
        emit(PopularTvSeriesPreviewState.loaded(tvSeries: tvSeries));
      } catch (e) {
        emit(PopularTvSeriesPreviewState.error(e.toString()));
      }
    });
  }
}
