import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/features/tv_series/domain/entities/season_details.dart';
import 'package:movie_app/features/tv_series/presentation/bloc/season_details/season_details_bloc.dart';

class SeasonDetailsScreen extends StatelessWidget {
  final int seriesId;
  final String seriesName;
  final int seasonNumber;

  const SeasonDetailsScreen({
    super.key,
    required this.seriesId,
    required this.seriesName,
    required this.seasonNumber,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SeasonDetailsBloc>()
            ..add(SeasonDetailsEvent.detailsRequested(seriesId, seasonNumber)),
      child: Scaffold(
        appBar: AppBar(title: Text(seriesName),),
        body: BlocBuilder<SeasonDetailsBloc, SeasonDetailsState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (SeasonDetails details) => Text(details.name),
              error: (message) => Text(message),
            );
          },
        ),
      ),
    );
  }
}
