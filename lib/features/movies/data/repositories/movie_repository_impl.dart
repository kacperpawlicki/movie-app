import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/data/datasources/movie_remote_datasource.dart';
import 'package:movie_app/features/movies/data/models/movie_model.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
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
  
}