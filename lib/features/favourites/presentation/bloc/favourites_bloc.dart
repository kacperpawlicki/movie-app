import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/favourites/domain/entities/favourite_item.dart';
import 'package:movie_app/features/favourites/domain/usecases/get_favourites_usecase.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final GetFavouritesUsecase _getFavouritesUsecase;

  FavouritesBloc(this._getFavouritesUsecase) : super(_Loading()) {
    on<_Started>((event, emit) async {
      emit(FavouritesState.loading());
      try {
        final favourites = await _getFavouritesUsecase();
        emit(FavouritesState.loaded(favourites: favourites));
      } catch (e) {
        emit(FavouritesState.error(e.toString()));
      }
    });
  }
}
