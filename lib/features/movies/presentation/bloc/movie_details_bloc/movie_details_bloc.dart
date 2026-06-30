import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/domain/usecases/add_favourite_usecase.dart';
import 'package:movie_app/features/favourites/domain/usecases/delete_favourite_usecase.dart';
import 'package:movie_app/features/favourites/domain/usecases/is_favourite_usecase.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/domain/entities/movie_details.dart';
import 'package:movie_app/features/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movie_app/features/movies/domain/usecases/get_similar_movies_usecase.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

@injectable
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase _getMovieDetailsUseCase;
  final GetSimilarMoviesUsecase _getSimilarMoviesUseCase;
  final AddFavouriteUsecase _addFavouriteUsecase;
  final DeleteFavouriteUsecase _deleteFavouriteUsecase;
  final IsFavouriteUsecase _isFavoruiteUsecase;

  MovieDetailsBloc(
    this._getMovieDetailsUseCase,
    this._getSimilarMoviesUseCase,
    this._addFavouriteUsecase,
    this._deleteFavouriteUsecase,
    this._isFavoruiteUsecase,
  ) : super(_Loading()) {
    on<_Started>((event, emit) async {
      emit(MovieDetailsState.loading());
      try {
        final details = await _getMovieDetailsUseCase(event.id);
        final similarMovies = await _getSimilarMoviesUseCase(event.id);
        final isFavourite = await _isFavoruiteUsecase(
          event.id,
          MediaType.movie,
        );
        emit(
          MovieDetailsState.loaded(
            details: details,
            similarMovies: similarMovies,
            isFavourite: isFavourite,
          ),
        );
      } catch (e) {
        emit(MovieDetailsState.error(e.toString()));
      }
    });

    on<_ToggleFavourite>((event, emit) async {
      final currentState = state;
      if (currentState is! _Loaded) return;

      if (currentState.isFavourite) {
        await _deleteFavouriteUsecase(event.details.id, MediaType.movie);
        emit(currentState.copyWith(isFavourite: !currentState.isFavourite));
      } else {
        await _addFavouriteUsecase(
          FavouriteItem(
            id: event.details.id,
            type: MediaType.movie,
            title: event.details.title,
            posterPath: event.details.posterPath,
          ),
        );
        emit(currentState.copyWith(isFavourite: !currentState.isFavourite));
      }
    });
  }
}
