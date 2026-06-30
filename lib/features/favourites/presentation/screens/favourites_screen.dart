import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/presentation/bloc/favourites_bloc.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<FavouritesBloc>()..add(FavouritesEvent.started()),
      child: BlocBuilder<FavouritesBloc, FavouritesState>(
        builder: (context, state) {
          return state.when(
            loading: () => Center(child: CircularProgressIndicator()),
            loaded: (List<FavouriteItem> favourites) => CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Favourites',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Handpicked library of entertainment",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                if (favourites.isEmpty)
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(
                        "You don't have any favourites, go add some!",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                if (favourites.isNotEmpty)
                  SliverList.separated(
                    itemCount: favourites.length,
                    itemBuilder: (context, index) =>
                        Text(favourites[index].title),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                  ),
              ],
            ),
            error: (message) => Text(message),
          );
        },
      ),
    );
  }
}
