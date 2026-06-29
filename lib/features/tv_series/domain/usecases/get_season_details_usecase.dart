import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tv_series/domain/entities/season_details.dart';
import 'package:movie_app/features/tv_series/domain/repositories/tv_series_repository.dart';

@injectable
class GetSeasonDetailsUsecase {
  final TvSeriesRepository _repository;

  GetSeasonDetailsUsecase(this._repository);

  Future<SeasonDetails> call({required int seriesId, required int seasonNumber}) =>
      _repository.getSeasonDetails(seriesId, seasonNumber);
}
