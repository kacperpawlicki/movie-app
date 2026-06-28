import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series_details.dart';

abstract class TvSeriesRepository {
  Future<List<TvSeries>> getPopularTvSeries(int page);
  Future<TvSeriesDetails> getTvSeriesDetails(int id);
}