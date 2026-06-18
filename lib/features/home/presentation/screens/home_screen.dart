import 'package:flutter/material.dart';
import 'package:movie_app/features/movies/presentation/widgets/popular_movies_preview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [PopularMoviesPreview()]);
  }
}
