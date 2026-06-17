import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/domain/usecases/get_popular_movies_usecase.dart';

part 'popular_movies_preview_event.dart';
part 'popular_movies_preview_state.dart';
part 'popular_movies_preview_bloc.freezed.dart';

@injectable
class PopularMoviesPreviewBloc extends Bloc<PopularMoviesPreviewEvent, PopularMoviesPreviewState> {
  final GetPopularMoviesUseCase _getPopularMoviesUseCase;

  PopularMoviesPreviewBloc(this._getPopularMoviesUseCase) : super(_Loading()) {
    on<_MoviesRequested>((event, emit) async {
      emit(PopularMoviesPreviewState.loading());
      try {
        final movies = await _getPopularMoviesUseCase(1);
        emit(PopularMoviesPreviewState.loaded(movies: movies));
      } catch (e) {
        emit(PopularMoviesPreviewState.error(e.toString()));
      }
    });
  }
}
