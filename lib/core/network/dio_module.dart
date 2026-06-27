import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/constants/api_constants.dart';
import 'package:movie_app/features/movies/data/datasources/movie_api_service.dart';
import 'package:movie_app/features/tv_series/data/datasources/tv_series_api_service.dart';

@module
abstract class DioModule {
  @singleton
  Dio get dio {
    final dio = Dio();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Bearer ${ApiConstants.bearerToken}';
          return handler.next(options);
        },
      ),
    );
    return dio;
  }

  @singleton
  MovieApiService movieApiService(Dio dio) => MovieApiService(dio);

  @singleton
  TvSeriesApiService tvSeriesApiService(Dio dio) => TvSeriesApiService(dio);
}