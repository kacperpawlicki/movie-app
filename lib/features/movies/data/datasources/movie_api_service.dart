import 'package:dio/dio.dart';
import 'package:movie_app/core/constants/api_constants.dart';
import 'package:movie_app/features/movies/data/models/movies_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class MovieApiService {
  factory MovieApiService(Dio dio) = _MovieApiService;

  @GET('/movie/popular')
  Future<MoviesResponseModel> getPopularMovies(
    @Query('page') int page,
  );
}