import 'package:flutter/material.dart';

class MediaCard extends StatelessWidget {
  final String title;
  final double voteAverage;
  final String? imagePath;
  final VoidCallback onTap;
  final Axis orientation;

  const MediaCard({
    super.key,
    required this.title,
    required this.voteAverage,
    required this.imagePath,
    required this.onTap,
    this.orientation = Axis.vertical,
  });

  String get genericPath => orientation == Axis.vertical
      ? 'https://image.tmdb.org/t/p/w200'
      : 'https://image.tmdb.org/t/p/w300';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: orientation == Axis.vertical ? 160 : 200,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    height: orientation == Axis.vertical ? 240 : 110,
                    child: Image.network(
                      '$genericPath$imagePath',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 6,
                  bottom: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.4),
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.12),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          voteAverage.toStringAsFixed(1),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 4),
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
