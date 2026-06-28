import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/core/widgets/media_card.dart';
import 'package:movie_app/features/tv_series/presentation/bloc/popular_tv_series_screen/popular_tv_series_screen_bloc.dart';

class PopularTvSeriesScreen extends StatelessWidget {
  const PopularTvSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PopularTvSeriesScreenBloc>()
            ..add(PopularTvSeriesScreenEvent.started()),
      child: const _PopularTvSeriesScreenView(),
    );
  }
}

class _PopularTvSeriesScreenView extends StatefulWidget {
  const _PopularTvSeriesScreenView();

  @override
  State<_PopularTvSeriesScreenView> createState() =>
      _PopularTvSeriesScreenViewState();
}

class _PopularTvSeriesScreenViewState
    extends State<_PopularTvSeriesScreenView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<PopularTvSeriesScreenBloc>().add(
        const PopularTvSeriesScreenEvent.nextPageRequested(),
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Tv Series',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<PopularTvSeriesScreenBloc, PopularTvSeriesScreenState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (tvSeries, currentPage, hasReachedMax, isLoadingMore) =>
                  CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        sliver: SliverGrid(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 12,
                                childAspectRatio: 0.6,
                              ),
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => MediaCard(
                              title: tvSeries[index].name,
                              voteAverage: tvSeries[index].voteAverage,
                              imagePath: tvSeries[index].posterPath,
                              onTap: () {
                                context.push('tv/details/${tvSeries[index].id}');
                              },
                            ),
                            childCount: tvSeries.length,
                          ),
                        ),
                      ),
                      if (isLoadingMore)
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 24),
                            child: Center(child: CircularProgressIndicator()),
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
