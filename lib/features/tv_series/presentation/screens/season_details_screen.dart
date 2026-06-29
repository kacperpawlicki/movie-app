import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/features/tv_series/domain/entities/season_details.dart';
import 'package:movie_app/features/tv_series/presentation/bloc/season_details/season_details_bloc.dart';
import 'package:movie_app/features/tv_series/presentation/widgets/episode_card.dart';

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

  final String genericPath = 'https://image.tmdb.org/t/p/w300';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SeasonDetailsBloc>()
            ..add(SeasonDetailsEvent.detailsRequested(seriesId, seasonNumber)),
      child: Scaffold(
        appBar: AppBar(title: Text(seriesName), scrolledUnderElevation: 0,),
        body: SafeArea(
          child: BlocBuilder<SeasonDetailsBloc, SeasonDetailsState>(
            builder: (context, state) {
              return state.when(
                loading: () => Center(child: CircularProgressIndicator()),
                loaded: (SeasonDetails details) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 210,
                          child: Row(
                            spacing: 15,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                margin: EdgeInsets.all(0),
                                child: Image.network(
                                  '$genericPath${details.posterPath}',
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 210,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    spacing: 8,
                                    children: [
                                      Text(
                                        details.name,
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        spacing: 15,
                                        children: [
                                          Row(
                                            spacing: 5,
                                            children: [
                                              Icon(
                                                Icons.calendar_today,
                                                size: 18,
                                              ),
                                              Text(
                                                details.airDate.substring(0, 4),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            spacing: 5,
                                            children: [
                                              Icon(Icons.list, size: 20),
                                              Text(
                                                '${details.episodes.length} Episodes',
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        spacing: 5,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.amber,
                                            fontWeight: FontWeight.w900,
                                          ),
                                          Text(
                                            details.voteAverage.toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Text(
                                          details.overview,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
          
                      SliverToBoxAdapter(child: SizedBox(height: 30)),
          
                      SliverToBoxAdapter(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Episodes',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (seasonNumber > 0)
                              Text(
                                'SEASON $seasonNumber',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                          ],
                        ),
                      ),
          
                      SliverToBoxAdapter(child: SizedBox(height: 20)),
          
                      SliverList.separated(
                        itemBuilder: (context, index) =>
                            EpisodeCard(episode: details.episodes[index]),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 12),
                        itemCount: details.episodes.length,
                      ),
                    ],
                  ),
                ),
                error: (message) => Text(message),
              );
            },
          ),
        ),
      ),
    );
  }
}
