import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/domain/entities/movie_details.dart';
import 'package:movie_app/features/movies/domain/usecases/get_movie_details_usecase.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

@injectable
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase _getMovieDetailsUseCase;

  MovieDetailsBloc(this._getMovieDetailsUseCase) : super(_Loading()) {
    on<_Started>((event, emit) async {
      emit(MovieDetailsState.loading());
      try {
        final details = await _getMovieDetailsUseCase(event.id);
        emit(MovieDetailsState.loaded(details: details));
      } catch (e) {
        emit(MovieDetailsState.error(e.toString()));
      }
    });
  }
}
