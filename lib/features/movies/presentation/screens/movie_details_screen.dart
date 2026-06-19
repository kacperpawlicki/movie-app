import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/features/movies/domain/entities/movie_details.dart';
import 'package:movie_app/features/movies/presentation/bloc/movie_details_bloc/movie_details_bloc.dart';

class MovieDetailsScreen extends StatelessWidget {
  final int id;

  const MovieDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<MovieDetailsBloc>()..add(MovieDetailsEvent.started(id)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Movie Details')),
        body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (MovieDetails details) =>
                  Center(child: Text(details.title)),
              error: (String message) => Text(message),
            );
          },
        ),
      ),
    );
  }
}
