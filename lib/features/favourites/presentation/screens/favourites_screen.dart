import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/presentation/bloc/favourites_bloc.dart';
import 'package:movie_app/features/favourites/presentation/widgets/favourite_item_card.dart';

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
                      SizedBox(height: 25,)
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
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.56,
                          ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => FavouriteItemCard(
                          item: favourites[index],
                        ),
                        childCount: favourites.length,
                      ),
                    ),
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
