import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/features/tv_series/presentation/bloc/tv_series_details/tv_series_details_bloc.dart';
import 'package:movie_app/features/tv_series/presentation/widgets/season_card.dart';

class TvSeriesDetailsScreen extends StatelessWidget {
  final int id;

  const TvSeriesDetailsScreen({super.key, required this.id});

  final String genericPath = 'https://image.tmdb.org/t/p/w500';

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
          getIt<TvSeriesDetailsBloc>()
            ..add(TvSeriesDetailsEvent.getTvSeriesDetails(id)),
      child: Scaffold(
        body: BlocBuilder<TvSeriesDetailsBloc, TvSeriesDetailsState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (details) => CustomScrollView(
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
                        padding: const EdgeInsets.only(right: 15),
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
                        right: 20,
                        top: 10,
                      ),
                      child: Column(
                        spacing: 2,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            details.name.toUpperCase(),
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
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
                                  '${details.numberOfSeasons} Seasons',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('●', style: TextStyle(fontSize: 13)),
                                Row(
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
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
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
                              ],
                            ),
                          ),

                          SizedBox(height: 20),

                          Text(details.overview),

                          SizedBox(height: 30),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Seasons',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.push('/tv/seasons', extra: details);
                                },
                                child: Text(
                                  'SEE ALL',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SeasonCard(
                            season: details.seasons.firstWhere(
                              (season) => season.seasonNumber == 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              error: (message) => Text(message),
            );
          },
        ),
      ),
    );
  }
}
