// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:movie_app/core/database/app_database.dart' as _i681;
import 'package:movie_app/core/network/dio_module.dart' as _i769;
import 'package:movie_app/features/favourites/data/datasources/favourites_local_datasource.dart'
    as _i429;
import 'package:movie_app/features/favourites/data/repositories/favourites_repository_impl.dart'
    as _i57;
import 'package:movie_app/features/favourites/domain/repositories/favourites_repository.dart'
    as _i1012;
import 'package:movie_app/features/favourites/domain/usecases/add_favourite_usecase.dart'
    as _i605;
import 'package:movie_app/features/favourites/domain/usecases/delete_favourite_usecase.dart'
    as _i371;
import 'package:movie_app/features/favourites/domain/usecases/get_favourites_usecase.dart'
    as _i489;
import 'package:movie_app/features/favourites/domain/usecases/is_favourite_usecase.dart'
    as _i870;
import 'package:movie_app/features/movies/data/datasources/movie_api_service.dart'
    as _i756;
import 'package:movie_app/features/movies/data/datasources/movie_remote_datasource.dart'
    as _i40;
import 'package:movie_app/features/movies/data/repositories/movie_repository_impl.dart'
    as _i1041;
import 'package:movie_app/features/movies/domain/repositories/movie_repository.dart'
    as _i512;
import 'package:movie_app/features/movies/domain/usecases/get_movie_details_usecase.dart'
    as _i864;
import 'package:movie_app/features/movies/domain/usecases/get_popular_movies_usecase.dart'
    as _i671;
import 'package:movie_app/features/movies/domain/usecases/get_similar_movies_usecase.dart'
    as _i90;
import 'package:movie_app/features/movies/presentation/bloc/movie_details_bloc/movie_details_bloc.dart'
    as _i741;
import 'package:movie_app/features/movies/presentation/bloc/popular_movies_preview/popular_movies_preview_bloc.dart'
    as _i1028;
import 'package:movie_app/features/movies/presentation/bloc/popular_movies_screen/popular_movies_screen_bloc.dart'
    as _i128;
import 'package:movie_app/features/tv_series/data/datasources/tv_series_api_service.dart'
    as _i979;
import 'package:movie_app/features/tv_series/data/datasources/tv_series_remote_datasource.dart'
    as _i934;
import 'package:movie_app/features/tv_series/data/repositories/tv_series_repository_impl.dart'
    as _i156;
import 'package:movie_app/features/tv_series/domain/repositories/tv_series_repository.dart'
    as _i632;
import 'package:movie_app/features/tv_series/domain/usecases/get_popular_tv_series_usecase.dart'
    as _i104;
import 'package:movie_app/features/tv_series/domain/usecases/get_season_details_usecase.dart'
    as _i842;
import 'package:movie_app/features/tv_series/domain/usecases/get_similar_tv_series_usecase.dart'
    as _i207;
import 'package:movie_app/features/tv_series/domain/usecases/get_tv_series_details_usecase.dart'
    as _i933;
import 'package:movie_app/features/tv_series/presentation/bloc/popular_tv_series_preview/popular_tv_series_preview_bloc.dart'
    as _i856;
import 'package:movie_app/features/tv_series/presentation/bloc/popular_tv_series_screen/popular_tv_series_screen_bloc.dart'
    as _i75;
import 'package:movie_app/features/tv_series/presentation/bloc/season_details/season_details_bloc.dart'
    as _i452;
import 'package:movie_app/features/tv_series/presentation/bloc/tv_series_details/tv_series_details_bloc.dart'
    as _i8;
import 'package:sqflite/sqflite.dart' as _i779;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final databaseModule = _$DatabaseModule();
    final dioModule = _$DioModule();
    await gh.factoryAsync<_i779.Database>(
      () => databaseModule.database,
      preResolve: true,
    );
    gh.singleton<_i361.Dio>(() => dioModule.dio);
    gh.singleton<_i756.MovieApiService>(
      () => dioModule.movieApiService(gh<_i361.Dio>()),
    );
    gh.singleton<_i979.TvSeriesApiService>(
      () => dioModule.tvSeriesApiService(gh<_i361.Dio>()),
    );
    gh.singleton<_i934.TvSeriesRemoteDatasource>(
      () => _i934.TvSeriesRemoteDatasource(gh<_i979.TvSeriesApiService>()),
    );
    gh.singleton<_i1012.FavouritesRepository>(
      () =>
          _i57.FavouritesRepositoryImpl(gh<_i429.FavouritesLocalDataSource>()),
    );
    gh.factory<_i605.AddFavouriteUsecase>(
      () => _i605.AddFavouriteUsecase(gh<_i1012.FavouritesRepository>()),
    );
    gh.factory<_i371.DeleteFavouriteUsecase>(
      () => _i371.DeleteFavouriteUsecase(gh<_i1012.FavouritesRepository>()),
    );
    gh.factory<_i489.GetFavouritesUsecase>(
      () => _i489.GetFavouritesUsecase(gh<_i1012.FavouritesRepository>()),
    );
    gh.factory<_i870.IsFavouriteUsecase>(
      () => _i870.IsFavouriteUsecase(gh<_i1012.FavouritesRepository>()),
    );
    gh.singleton<_i632.TvSeriesRepository>(
      () => _i156.TvSeriesRepositoryImpl(gh<_i934.TvSeriesRemoteDatasource>()),
    );
    gh.singleton<_i40.MovieRemoteDatasource>(
      () => _i40.MovieRemoteDatasource(gh<_i756.MovieApiService>()),
    );
    gh.singleton<_i512.MovieRepository>(
      () => _i1041.MovieRepositoryImpl(gh<_i40.MovieRemoteDatasource>()),
    );
    gh.factory<_i864.GetMovieDetailsUseCase>(
      () => _i864.GetMovieDetailsUseCase(gh<_i512.MovieRepository>()),
    );
    gh.factory<_i671.GetPopularMoviesUseCase>(
      () => _i671.GetPopularMoviesUseCase(gh<_i512.MovieRepository>()),
    );
    gh.factory<_i90.GetSimilarMoviesUsecase>(
      () => _i90.GetSimilarMoviesUsecase(gh<_i512.MovieRepository>()),
    );
    gh.factory<_i104.GetPopularTvSeriesUseCase>(
      () => _i104.GetPopularTvSeriesUseCase(gh<_i632.TvSeriesRepository>()),
    );
    gh.factory<_i842.GetSeasonDetailsUsecase>(
      () => _i842.GetSeasonDetailsUsecase(gh<_i632.TvSeriesRepository>()),
    );
    gh.factory<_i207.GetSimilarTvSeriesUseCase>(
      () => _i207.GetSimilarTvSeriesUseCase(gh<_i632.TvSeriesRepository>()),
    );
    gh.factory<_i933.GetTvSeriesDetailsUsecase>(
      () => _i933.GetTvSeriesDetailsUsecase(gh<_i632.TvSeriesRepository>()),
    );
    gh.factory<_i856.PopularTvSeriesPreviewBloc>(
      () => _i856.PopularTvSeriesPreviewBloc(
        gh<_i104.GetPopularTvSeriesUseCase>(),
      ),
    );
    gh.factory<_i75.PopularTvSeriesScreenBloc>(
      () =>
          _i75.PopularTvSeriesScreenBloc(gh<_i104.GetPopularTvSeriesUseCase>()),
    );
    gh.factory<_i8.TvSeriesDetailsBloc>(
      () => _i8.TvSeriesDetailsBloc(
        gh<_i933.GetTvSeriesDetailsUsecase>(),
        gh<_i207.GetSimilarTvSeriesUseCase>(),
      ),
    );
    gh.factory<_i1028.PopularMoviesPreviewBloc>(
      () =>
          _i1028.PopularMoviesPreviewBloc(gh<_i671.GetPopularMoviesUseCase>()),
    );
    gh.factory<_i128.PopularMoviesScreenBloc>(
      () => _i128.PopularMoviesScreenBloc(gh<_i671.GetPopularMoviesUseCase>()),
    );
    gh.factory<_i741.MovieDetailsBloc>(
      () => _i741.MovieDetailsBloc(
        gh<_i864.GetMovieDetailsUseCase>(),
        gh<_i90.GetSimilarMoviesUsecase>(),
      ),
    );
    gh.factory<_i452.SeasonDetailsBloc>(
      () => _i452.SeasonDetailsBloc(gh<_i842.GetSeasonDetailsUsecase>()),
    );
    return this;
  }
}

class _$DatabaseModule extends _i681.DatabaseModule {}

class _$DioModule extends _i769.DioModule {}
