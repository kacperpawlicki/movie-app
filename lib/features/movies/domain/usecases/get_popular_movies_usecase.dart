import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/domain/repositories/movie_repository.dart';

@injectable
class GetPopularMoviesUseCase {
  final MovieRepository _repository;

  GetPopularMoviesUseCase(this._repository);

  Future<List<Movie>> call (int page) => _repository.getPopularMovies(page);

}