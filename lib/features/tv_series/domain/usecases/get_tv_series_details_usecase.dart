import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series_details.dart';
import 'package:movie_app/features/tv_series/domain/repositories/tv_series_repository.dart';

@injectable
class GetTvSeriesDetailsUsecase {
  final TvSeriesRepository _repository;

  GetTvSeriesDetailsUsecase(this._repository);

  Future<TvSeriesDetails> call (int id) => _repository.getTvSeriesDetails(id);

}