import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';
import 'package:movie_app/features/tv_series/domain/usecases/get_popular_tv_series_usecase.dart';

part 'popular_tv_series_screen_event.dart';
part 'popular_tv_series_screen_state.dart';
part 'popular_tv_series_screen_bloc.freezed.dart';

@injectable
class PopularTvSeriesScreenBloc
    extends Bloc<PopularTvSeriesScreenEvent, PopularTvSeriesScreenState> {
  final GetPopularTvSeriesUseCase _getPopularTvSeriesUseCase;

  PopularTvSeriesScreenBloc(this._getPopularTvSeriesUseCase)
    : super(_Loading()) {
    on<_Started>((event, emit) async {
      emit(PopularTvSeriesScreenState.loading());
      try {
        final tvSeries = await _getPopularTvSeriesUseCase(1);
        emit(
          PopularTvSeriesScreenState.loaded(
            tvSeries: tvSeries,
            currentPage: 1,
            hasReachedMax: tvSeries.isEmpty,
          ),
        );
      } catch (e) {
        emit(PopularTvSeriesScreenState.error(e.toString()));
      }
    });

    on<_NextPageRequested>((event, emit) async {
      final currentState = state;
      if (currentState is! _Loaded || currentState.hasReachedMax) return;

      emit(currentState.copyWith(isLoadingMore: true));

      try {
        final tvSeries = currentState.tvSeries;
        final nextPage = currentState.currentPage + 1;
        final newTvSeries = await _getPopularTvSeriesUseCase(nextPage);
        emit(
          PopularTvSeriesScreenState.loaded(
            tvSeries: [...tvSeries, ...newTvSeries],
            currentPage: nextPage,
            hasReachedMax: newTvSeries.isEmpty,
            isLoadingMore: false,
          ),
        );
      } catch (e) {
        emit(currentState.copyWith(isLoadingMore: false));
      }
    });
  }
}
