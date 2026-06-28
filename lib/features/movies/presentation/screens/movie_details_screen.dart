import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/core/widgets/media_card.dart';
import 'package:movie_app/features/movies/domain/entities/movie.dart';
import 'package:movie_app/features/movies/domain/entities/movie_details.dart';
import 'package:movie_app/features/movies/presentation/bloc/movie_details_bloc/movie_details_bloc.dart';

class MovieDetailsScreen extends StatelessWidget {
  final int id;

  const MovieDetailsScreen({super.key, required this.id});

  final String genericPath = 'https://image.tmdb.org/t/p/w500';

  String _formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final remainingMinutes = minutes % 60;

    if (hours == 0) {
      return '$remainingMinutes min';
    }

    if (remainingMinutes == 0) {
      return '$hours h';
    }

    return '$hours h $remainingMinutes min';
  }

  String _formatVoteCount(int count) {
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    } else if (count >= 10000) {
      return '${(count / 1000).toStringAsFixed(1)}k';
    }
    return count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<MovieDetailsBloc>()..add(MovieDetailsEvent.started(id)),
      child: Scaffold(
        body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (MovieDetails details, List<Movie> similarMovies) =>
                  CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        expandedHeight: 220,
                        pinned: true,
                        automaticallyImplyLeading: false,
                        toolbarHeight: 50,
                        leadingWidth: 55,
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.secondaryContainer,
                            child: IconButton(
                              onPressed: () => context.pop(),
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: CircleAvatar(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.secondaryContainer,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                        flexibleSpace: FlexibleSpaceBar(
                          background: Image.network(
                            '$genericPath${details.backdropPath}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 30,
                            top: 10,
                          ),
                          child: Column(
                            spacing: 2,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                details.title.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                spacing: 15,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    spacing: 4,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 20,
                                      ),
                                      Text(
                                        details.voteAverage.toStringAsFixed(1),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '(${_formatVoteCount(details.voteCount)})',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Text('●', style: TextStyle(fontSize: 13)),
                                  Text(
                                    _formatDuration(details.runtime),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('●', style: TextStyle(fontSize: 13)),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        spacing: 4,
                                        children: details.genres
                                            .take(3)
                                            .map(
                                              (item) => Container(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                  vertical: 4,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.secondaryContainer,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Text(
                                                  item.name.toUpperCase(),
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0.5,
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 20,),

                              Text(details.overview),

                              if (similarMovies.isNotEmpty)
                                _similarMoviesSection(similarMovies),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              error: (String message) => Text(message),
            );
          },
        ),
      ),
    );
  }
}

Widget _similarMoviesSection(List<Movie> similarMovies) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 30),
      Text(
        'Similar Movies',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 220,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: similarMovies.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 130,
              child: MediaCard(
                title: similarMovies[index].title,
                voteAverage: similarMovies[index].voteAverage,
                imagePath: similarMovies[index].posterPath,
                onTap: () {
                  context.push('/movies/details/${similarMovies[index].id}');
                },
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 12);
          },
        ),
      ),
    ],
  );
}
