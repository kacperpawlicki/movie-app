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
import 'package:movie_app/core/network/dio_module.dart' as _i769;
import 'package:movie_app/features/movies/data/datasources/movie_api_service.dart'
    as _i756;
import 'package:movie_app/features/movies/data/datasources/movie_remote_datasource.dart'
    as _i40;
import 'package:movie_app/features/movies/data/repositories/movie_repository_impl.dart'
    as _i1041;
import 'package:movie_app/features/movies/domain/repositories/movie_repository.dart'
    as _i512;
import 'package:movie_app/features/movies/domain/usecases/get_popular_movies_usecase.dart'
    as _i671;
import 'package:movie_app/features/movies/presentation/bloc/popular_movies_preview/popular_movies_preview_bloc.dart'
    as _i1028;
import 'package:movie_app/features/movies/presentation/bloc/popular_movies_screen/popular_movies_screen_bloc.dart'
    as _i128;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.singleton<_i361.Dio>(() => dioModule.dio);
    gh.singleton<_i756.MovieApiService>(
      () => dioModule.movieApiService(gh<_i361.Dio>()),
    );
    gh.singleton<_i40.MovieRemoteDatasource>(
      () => _i40.MovieRemoteDatasource(gh<_i756.MovieApiService>()),
    );
    gh.singleton<_i512.MovieRepository>(
      () => _i1041.MovieRepositoryImpl(gh<_i40.MovieRemoteDatasource>()),
    );
    gh.factory<_i671.GetPopularMoviesUseCase>(
      () => _i671.GetPopularMoviesUseCase(gh<_i512.MovieRepository>()),
    );
    gh.factory<_i1028.PopularMoviesPreviewBloc>(
      () =>
          _i1028.PopularMoviesPreviewBloc(gh<_i671.GetPopularMoviesUseCase>()),
    );
    gh.factory<_i128.PopularMoviesScreenBloc>(
      () => _i128.PopularMoviesScreenBloc(gh<_i671.GetPopularMoviesUseCase>()),
    );
    return this;
  }
}

class _$DioModule extends _i769.DioModule {}
