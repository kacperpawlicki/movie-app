import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/domain/entities/movie_details.dart';
import 'package:movie_app/features/movies/domain/repositories/movie_repository.dart';

@injectable
class GetMovieDetailsUseCase {
  final MovieRepository _repository;

  GetMovieDetailsUseCase(this._repository);

  Future<MovieDetails> call (int id) => _repository.getMovieDetailsById(id);

}