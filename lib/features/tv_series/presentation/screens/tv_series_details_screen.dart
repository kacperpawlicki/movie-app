import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/features/tv_series/presentation/bloc/tv_series_details/tv_series_details_bloc.dart';

class TvSeriesDetailsScreen extends StatelessWidget {
  final int id;

  const TvSeriesDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<TvSeriesDetailsBloc>()
            ..add(TvSeriesDetailsEvent.getTvSeriesDetails(id)),
      child: Scaffold(
        body: BlocBuilder<TvSeriesDetailsBloc, TvSeriesDetailsState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (details) => Text(details.name),
              error: (message) => Text(message),
            );
          },
        ),
      ),
    );
  }
}
