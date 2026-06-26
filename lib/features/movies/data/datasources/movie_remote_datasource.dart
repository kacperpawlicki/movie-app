import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies/data/datasources/movie_api_service.dart';
import 'package:movie_app/features/movies/data/models/movie_details_model.dart';
import 'package:movie_app/features/movies/data/models/movie_model.dart';

@singleton
class MovieRemoteDatasource {
  final MovieApiService _apiService;

  MovieRemoteDatasource(this._apiService);

  Future<List<MovieModel>> getPopularMovies({int page = 1}) async {
    final response = await _apiService.getPopularMovies(page);
    return response.results;
  }

  Future<MovieDetailsModel> getMovieDetailsById({required int id}) async {
    final response = await _apiService.getMovieDetailsById(id);
    return response;
  }

  Future<List<MovieModel>> getSimilarMovies({required int id, int page = 1}) async {
    final response = await _apiService.getSimilarMovies(id, page);
    return response.results;
  }
}