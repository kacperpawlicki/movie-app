import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/data/datasources/tv_series_remote_datasource.dart';
import 'package:movie_app/features/tv_series/data/models/season_details_model.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_details_model.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_model.dart';
import 'package:movie_app/features/tv_series/domain/entities/season_details.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series_details.dart';
import 'package:movie_app/features/tv_series/domain/repositories/tv_series_repository.dart';

@Singleton(as: TvSeriesRepository)
class TvSeriesRepositoryImpl implements TvSeriesRepository{

  final TvSeriesRemoteDatasource _datasource;
  TvSeriesRepositoryImpl(this._datasource);

  @override
  Future<List<TvSeries>> getPopularTvSeries(int page) async {
    final models = await _datasource.getPopularTvSeries(page: page);
    return models.map((model) => model.toDomain()).toList();
  }

  @override
  Future<TvSeriesDetails> getTvSeriesDetails(int id) async{
    final model = await _datasource.getTvSeriesDetails(id: id);
    return model.map((model) => model.toDomain());
  }
  
  @override
  Future<List<TvSeries>> getSimilarTvSeries(int id) async {
    final models = await _datasource.getSimilarTvSeries(id: id);
    return models.map((model) => model.toDomain()).toList();
  }

  @override
  Future<SeasonDetails> getSeasonDetails(int seriesId, int seasonNumber) async{
    final model = await _datasource.getSeasonDetails(seriesId: seriesId, seasonNumber: seasonNumber);
    return model.map((model) => model.toDomain());
  }
}