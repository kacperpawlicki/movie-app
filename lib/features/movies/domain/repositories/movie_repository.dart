import 'package:movie_app/features/movies/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getPopularMovies(int page);
}