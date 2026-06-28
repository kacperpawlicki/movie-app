import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/data/datasources/tv_series_api_service.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_details_model.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_model.dart';

@singleton
class TvSeriesRemoteDatasource {
  final TvSeriesApiService _apiService;

  TvSeriesRemoteDatasource(this._apiService);

  Future<List<TvSeriesModel>> getPopularTvSeries({int page = 1}) async {
    final response = await _apiService.getPopularTvSeries(page);
    return response.results;
  }

  Future<TvSeriesDetailsModel> getTvSeriesDetails({required int id}) async {
    return await _apiService.getTvSeriesDetails(id);
  }
}