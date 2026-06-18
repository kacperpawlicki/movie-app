import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/core/widgets/media_card.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/presentation/bloc/popular_movies_preview/popular_movies_preview_bloc.dart';

class PopularMoviesPreview extends StatelessWidget {
  const PopularMoviesPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PopularMoviesPreviewBloc>()
            ..add(PopularMoviesPreviewEvent.moviesRequested()),
      child: BlocBuilder<PopularMoviesPreviewBloc, PopularMoviesPreviewState>(
        builder: (context, state) {
          return state.when(
            loading: () => const SizedBox(
              height: 280,
              child: Center(child: CircularProgressIndicator()),
            ),
            loaded: (List<Movie> movies) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Movies',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.push('/movies/popular');
                      },
                      child: Text(
                        'SEE MORE',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 280,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 160,
                        child: MediaCard(
                          title: movies[index].title,
                          voteAverage: movies[index].voteAverage,
                          imagePath: movies[index].posterPath,
                          onTap: () {},
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 12);
                    },
                  ),
                ),
              ],
            ),
            error: (String message) => Text('Error: $message'),
          );
        },
      ),
    );
  }
}
