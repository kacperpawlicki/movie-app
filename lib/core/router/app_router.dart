import 'package:go_router/go_router.dart';
import 'package:movie_app/features/movies/presentation/screens/popular_movies_screen.dart';
import 'package:movie_app/main_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MainScreen()
    ),
    GoRoute(
      path: '/movies/popular',
      builder: (context, state) => PopularMoviesScreen()
    )
  ]
);