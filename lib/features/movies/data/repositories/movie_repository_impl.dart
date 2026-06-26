import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/data/datasources/movie_remote_datasource.dart';
import 'package:movie_app/features/movies/data/models/movie_details_model.dart';
import 'package:movie_app/features/movies/data/models/movie_model.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/domain/entities/movie_details.dart';
import 'package:movie_app/features/movies/domain/repositories/movie_repository.dart';

@Singleton(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository{

  final MovieRemoteDatasource _datasource;
  MovieRepositoryImpl(this._datasource);

  @override
  Future<List<Movie>> getPopularMovies(int page) async {
    final models = await _datasource.getPopularMovies(page: page);
    return models.map((model) => model.toDomain()).toList();
  }
  
  @override
  Future<MovieDetails> getMovieDetailsById(int id) async {
    final model = await _datasource.getMovieDetailsById(id: id);
    return model.toDomain();
  }
  
  @override
  Future<List<Movie>> getSimilarMovies(int id) async {
    final models = await _datasource.getSimilarMovies(id: id);
    return models.map((model) => model.toDomain()).toList();
  }
  
}