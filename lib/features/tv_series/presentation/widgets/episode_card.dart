import 'package:flutter/material.dart';
import 'package:movie_app/features/tv_series/domain/entities/episode.dart';

class EpisodeCard extends StatelessWidget {
  final Episode episode;

  const EpisodeCard({super.key, required this.episode});

  final String genericPath = 'https://image.tmdb.org/t/p/w300';

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

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            Stack(
              children: [
                Card(
                  margin: EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    '$genericPath${episode.stillPath}',
                    height: 90,
                  ),
                ),
                Positioned(
                  left: 12,
                  bottom: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.12),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      spacing: 5,
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.amber,
                          fontWeight: FontWeight.w900,
                        ),
                        Text(
                          episode.voteAverage.toStringAsFixed(1),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      episode.name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    if (episode.runtime != null)
                      Text(
                        _formatDuration(episode.runtime!),
                        style: TextStyle(fontSize: 13),
                      ),
                    Expanded(
                      child: Text(
                        episode.overview,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
