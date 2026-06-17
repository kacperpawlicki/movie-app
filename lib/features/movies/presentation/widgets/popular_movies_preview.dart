import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/presentation/bloc/popular_movies_preview/popular_movies_preview_bloc.dart';

class PopularMoviesPreview extends StatelessWidget {
  const PopularMoviesPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PopularMoviesPreviewBloc>()..add(PopularMoviesPreviewEvent.moviesRequested()),
      child: BlocBuilder<PopularMoviesPreviewBloc, PopularMoviesPreviewState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()), 
            loaded: (List<Movie> movies) => SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsGeometry.all(15),
                    child: Text(movies[index].title),
                  );
                },
              ),
            ), 
            error: (String message) => Text('Error: $message')
          );
        },
      ),
    );
  }
}