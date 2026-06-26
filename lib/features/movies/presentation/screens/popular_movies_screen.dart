import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/core/widgets/media_card.dart';
import 'package:movie_app/features/movies/presentation/bloc/popular_movies_screen/popular_movies_screen_bloc.dart';

class PopularMoviesScreen extends StatelessWidget {
  const PopularMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PopularMoviesScreenBloc>()
            ..add(PopularMoviesScreenEvent.started()),
      child: const _PopularMoviesScreenView(),
    );
  }
}

class _PopularMoviesScreenView extends StatefulWidget {
  const _PopularMoviesScreenView();

  @override
  State<_PopularMoviesScreenView> createState() =>
      _PopularMoviesScreenViewState();
}

class _PopularMoviesScreenViewState extends State<_PopularMoviesScreenView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<PopularMoviesScreenBloc>().add(
        const PopularMoviesScreenEvent.nextPageRequested(),
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
          'Popular Movies',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<PopularMoviesScreenBloc, PopularMoviesScreenState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (movies, currentPage, hasReachedMax, isLoadingMore) =>
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
                              title: movies[index].title,
                              voteAverage: movies[index].voteAverage,
                              imagePath: movies[index].posterPath,
                              onTap: () {
                                context.push('/movies/details/${movies[index].id}');
                              },
                            ),
                            childCount: movies.length,
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