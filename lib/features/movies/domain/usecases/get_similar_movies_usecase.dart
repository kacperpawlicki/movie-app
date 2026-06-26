import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/domain/repositories/movie_repository.dart';

@injectable
class GetSimilarMoviesUsecase {
  final MovieRepository _repository;

  GetSimilarMoviesUsecase(this._repository);

  Future<List<Movie>> call (int id) => _repository.getSimilarMovies(id);
}