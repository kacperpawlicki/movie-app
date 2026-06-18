import 'package:go_router/go_router.dart';
import 'package:movie_app/main_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MainScreen()
    )
  ]
);