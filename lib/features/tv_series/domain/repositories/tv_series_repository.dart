import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';

abstract class TvSeriesRepository {
  Future<List<TvSeries>> getPopularTvSeries(int page);
}