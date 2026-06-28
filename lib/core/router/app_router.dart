import 'package:go_router/go_router.dart';
import 'package:movie_app/features/movies/presentation/screens/movie_details_screen.dart';
import 'package:movie_app/features/movies/presentation/screens/popular_movies_screen.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series_details.dart';
import 'package:movie_app/features/tv_series/presentation/screens/popular_tv_series_screen.dart';
import 'package:movie_app/features/tv_series/presentation/screens/tv_series_all_seasons_screen.dart';
import 'package:movie_app/features/tv_series/presentation/screens/tv_series_details_screen.dart';
import 'package:movie_app/main_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => MainScreen()),
    GoRoute(
      path: '/movies/popular',
      builder: (context, state) => PopularMoviesScreen(),
    ),
    GoRoute(
      path: '/movies/details/:id',
      builder: (context, state) =>
          MovieDetailsScreen(id: int.parse(state.pathParameters['id']!)),
    ),
    GoRoute(
      path: '/tvSeries/popular',
      builder: (context, state) => PopularTvSeriesScreen(),
    ),
    GoRoute(
      path: '/tv/details/:id',
      builder: (context, state) =>
          TvSeriesDetailsScreen(id: int.parse(state.pathParameters['id']!)),
    ),
    GoRoute(
      path: '/tv/seasons',
      builder: (context, state) {
        final details = state.extra as TvSeriesDetails;
        return TvSeriesAllSeasonsScreen(details: details);
      },
    ),
  ],
);
