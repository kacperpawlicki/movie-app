import 'package:dio/dio.dart';
import 'package:movie_app/core/constants/api_constants.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_details_model.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'tv_series_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class TvSeriesApiService {
  factory TvSeriesApiService(Dio dio) = _TvSeriesApiService;

  @GET('/tv/popular')
  Future<TvSeriesResponseModel> getPopularTvSeries(
    @Query('page') int page,
  );

  @GET('/tv/{id}')
  Future<TvSeriesDetailsModel> getTvSeriesDetails(
    @Path('id') int id,
  );
}