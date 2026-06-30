import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';

class FavouriteItemCard extends StatelessWidget {
  final FavouriteItem item;

  const FavouriteItemCard({super.key, required this.item});

  final String genericPath = 'https://image.tmdb.org/t/p/w200';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (item.type == MediaType.movie) {
          context.push('movies/details/${item.id}');
        } else {
          context.push('tv/details/${item.id}');
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                child: item.posterPath != null
                    ? Image.network(
                        '$genericPath${item.posterPath}',
                        fit: BoxFit.cover,
                      )
                    : AspectRatio(
                        aspectRatio: 2 / 3,
                        child: Container(
                          color: Theme.of(
                            context,
                          ).colorScheme.surfaceContainerHighest,
                          child: const Icon(Icons.tv, size: 40),
                        ),
                      ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  radius: 15,
                  child: Icon(
                    Icons.favorite_outline,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 6, right: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.type == MediaType.movie ? 'MOVIE' : 'SERIES',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
