import 'package:flutter/material.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series_details.dart';
import 'package:movie_app/features/tv_series/presentation/widgets/season_card.dart';

class TvSeriesAllSeasonsScreen extends StatelessWidget {
  final TvSeriesDetails details;

  const TvSeriesAllSeasonsScreen({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(details.name), scrolledUnderElevation: 0,),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BROWSE ALL',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '${details.numberOfSeasons} Seasons',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 5,),
                padding: const EdgeInsets.all(12),
                itemCount: details.seasons.length,
                itemBuilder: (context, index) =>
                    SeasonCard(season: details.seasons[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
