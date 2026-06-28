import 'package:flutter/material.dart';
import 'package:movie_app/features/tv_series/domain/entities/season.dart';

class SeasonCard extends StatelessWidget {
  final Season season;

  const SeasonCard({super.key, required this.season});

  final String genericPath = 'https://image.tmdb.org/t/p/w200';

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        children: [
          Image.network(
            '$genericPath${season.posterPath}',
            fit: BoxFit.cover,
            height: 150,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    season.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${season.episodeCount} Episodes  ●  ${season.voteAverage} Rating',
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    season.overview,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
