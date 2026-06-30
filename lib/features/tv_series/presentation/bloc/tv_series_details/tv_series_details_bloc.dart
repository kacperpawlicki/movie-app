import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/domain/usecases/add_favourite_usecase.dart';
import 'package:movie_app/features/favourites/domain/usecases/delete_favourite_usecase.dart';
import 'package:movie_app/features/favourites/domain/usecases/is_favourite_usecase.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series_details.dart';
import 'package:movie_app/features/tv_series/domain/usecases/get_similar_tv_series_usecase.dart';
import 'package:movie_app/features/tv_series/domain/usecases/get_tv_series_details_usecase.dart';

part 'tv_series_details_event.dart';
part 'tv_series_details_state.dart';
part 'tv_series_details_bloc.freezed.dart';

@injectable
class TvSeriesDetailsBloc
    extends Bloc<TvSeriesDetailsEvent, TvSeriesDetailsState> {
  final GetTvSeriesDetailsUsecase _getTvSeriesDetailsUsecase;
  final GetSimilarTvSeriesUseCase _getSimilarTvSeriesUseCase;
  final AddFavouriteUsecase _addFavouriteUsecase;
  final DeleteFavouriteUsecase _deleteFavouriteUsecase;
  final IsFavouriteUsecase _isFavoruiteUsecase;

  TvSeriesDetailsBloc(
    this._getTvSeriesDetailsUsecase,
    this._getSimilarTvSeriesUseCase,
    this._addFavouriteUsecase,
    this._deleteFavouriteUsecase,
    this._isFavoruiteUsecase,
  ) : super(_Loading()) {
    on<_GetTvSeriesDetails>((event, emit) async {
      emit(TvSeriesDetailsState.loading());
      try {
        final details = await _getTvSeriesDetailsUsecase(event.id);
        final similarTvSeries = await _getSimilarTvSeriesUseCase(event.id);
        final isFavourite = await _isFavoruiteUsecase(
          event.id,
          MediaType.tv,
        );
        emit(
          TvSeriesDetailsState.loaded(
            details: details,
            similarTvSeries: similarTvSeries,
            isFavourite: isFavourite
          ),
        );
      } catch (e) {
        emit(TvSeriesDetailsState.error(e.toString()));
      }
    });


    on<_ToggleFavourite>((event, emit) async {
      final currentState = state;
      if (currentState is! _Loaded) return;

      if (currentState.isFavourite) {
        await _deleteFavouriteUsecase(event.details.id, MediaType.tv);
        emit(currentState.copyWith(isFavourite: !currentState.isFavourite));
      } else {
        await _addFavouriteUsecase(
          FavouriteItem(
            id: event.details.id,
            type: MediaType.tv,
            title: event.details.name,
            posterPath: event.details.posterPath,
          ),
        );
        emit(currentState.copyWith(isFavourite: !currentState.isFavourite));
      }
    });
  }
}
