import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/core/widgets/media_card.dart';
import 'package:movie_app/features/tv_series/domain/entities/tv_series.dart';
import 'package:movie_app/features/tv_series/presentation/bloc/popular_tv_series_preview/popular_tv_series_preview_bloc.dart';

class PopularTvSeriesPreview extends StatelessWidget {
  const PopularTvSeriesPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PopularTvSeriesPreviewBloc>()
            ..add(PopularTvSeriesPreviewEvent.tvSeriesRequested()),
      child:
          BlocBuilder<PopularTvSeriesPreviewBloc, PopularTvSeriesPreviewState>(
            builder: (context, state) {
              return state.when(
                loading: () => const SizedBox(
                  height: 280,
                  child: Center(child: CircularProgressIndicator()),
                ),
                loaded: (List<TvSeries> tvSeries) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Tv Series',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.push('/tvSeries/popular');
                          },
                          child: Text(
                            'SEE MORE',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 190,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: tvSeries.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 280,
                            child: MediaCard(
                              title: tvSeries[index].name,
                              voteAverage: tvSeries[index].voteAverage,
                              imagePath: tvSeries[index].backdropPath,
                              onTap: () {
                                
                              },
                              orientation: Axis.horizontal,
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 12);
                        },
                      ),
                    ),
                  ],
                ),
                error: (String message) => Text('Error: $message'),
              );
            },
          ),
    );
  }
}
