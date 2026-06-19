import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/domain/entities/movie_details.dart';

abstract class MovieRepository {
  Future<List<Movie>> getPopularMovies(int page);
  Future<MovieDetails> getMovieDetailsById(int id);
}