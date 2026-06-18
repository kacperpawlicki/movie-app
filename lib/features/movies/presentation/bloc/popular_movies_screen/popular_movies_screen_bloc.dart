import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/domain/usecases/get_popular_movies_usecase.dart';

part 'popular_movies_screen_event.dart';
part 'popular_movies_screen_state.dart';
part 'popular_movies_screen_bloc.freezed.dart';

@injectable
class PopularMoviesScreenBloc
    extends Bloc<PopularMoviesScreenEvent, PopularMoviesScreenState> {
  final GetPopularMoviesUseCase _getPopularMoviesUseCase;

  PopularMoviesScreenBloc(this._getPopularMoviesUseCase) : super(_Loading()) {
    on<_Started>((event, emit) async {
      emit(PopularMoviesScreenState.loading());
      try {
        final movies = await _getPopularMoviesUseCase(1);
        emit(
          PopularMoviesScreenState.loaded(
            movies: movies,
            currentPage: 1,
            hasReachedMax: movies.isEmpty,
          ),
        );
      } catch (e) {
        emit(PopularMoviesScreenState.error(e.toString()));
      }
    });

    on<_NextPageRequested>((event, emit) async {
      final currentState = state;
      if (currentState is! _Loaded || currentState.hasReachedMax) return;

      emit(currentState.copyWith(isLoadingMore: true));

      try {
        final movies = currentState._movies;
        final nextPage = currentState.currentPage+1;
        final newMovies = await _getPopularMoviesUseCase(nextPage);
        emit(
          PopularMoviesScreenState.loaded(
            movies: [...movies, ...newMovies],
            currentPage: nextPage,
            hasReachedMax: newMovies.isEmpty,
            isLoadingMore: false
          ),
        );
      } catch (e) {
        emit(currentState.copyWith(isLoadingMore: false));
      }
    });
  }
}
