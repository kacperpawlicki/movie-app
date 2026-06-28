import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';
import 'package:movie_app/features/tv_series/domain/repositories/tv_series_repository.dart';

@injectable
class GetSimilarTvSeriesUseCase {
  final TvSeriesRepository _repository;

  GetSimilarTvSeriesUseCase(this._repository);

  Future<List<TvSeries>> call (int id) => _repository.getSimilarTvSeries(id);

}