import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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

  MovieDetailsBloc(this._getMovieDetailsUseCase, this._getSimilarMoviesUseCase) : super(_Loading()) {
    on<_Started>((event, emit) async {
      emit(MovieDetailsState.loading());
      try {
        final details = await _getMovieDetailsUseCase(event.id);
        final similarMovies = await _getSimilarMoviesUseCase(event.id);
        emit(MovieDetailsState.loaded(details: details, similarMovies: similarMovies));
      } catch (e) {
        emit(MovieDetailsState.error(e.toString()));
      }
    });
  }
}
