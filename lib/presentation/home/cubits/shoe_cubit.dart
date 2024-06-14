import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';
import 'package:shoe_vault/presentation/home/view_models/shoe_view_model.dart';

part 'shoe_state.dart';
part 'shoe_cubit.freezed.dart';

class ShoeCubit extends Cubit<ShoeState> {
  ShoeCubit({required this.shoeService}) : super(const ShoeState.loading()) {
    fetchShoes();
  }

  final ShoeService shoeService;

  List<ShoeViewModel> allShoes = [];

  Future<void> fetchShoes() async {
    try {
      final shoes = await shoeService.fetchShoes();
      final shoeViewModels = shoes.map(ShoeViewModel.fromShoe).toList();
      allShoes = shoeViewModels;

      emit(ShoeState.loaded(shoes: shoeViewModels));
    } catch (e) {
      emit(ShoeState.error(message: e.toString()));
    }
  }

  Future<void> applyFilters({
    String? brand,
    double? priceRange,
    String? sortBy,
    String? gender,
    String? color,
  }) async {
    try {
      var filteredShoes = allShoes;

      if (brand != null && brand != 'All') {
        filteredShoes =
            filteredShoes.where((shoe) => shoe.brand == brand).toList();
      }
      if (priceRange != null) {
        filteredShoes =
            filteredShoes.where((shoe) => shoe.price <= priceRange).toList();
      }
      if (gender != null) {
        filteredShoes =
            filteredShoes.where((shoe) => shoe.genderType == gender).toList();
      }
      if (color != null) {
        filteredShoes = filteredShoes
            .where((shoe) => shoe.productImg.contains(color))
            .toList();
      }
      if (sortBy != null) {
        if (sortBy == 'Most Recent') {
          filteredShoes.sort((a, b) => b.id.compareTo(a.id));
        } else if (sortBy == 'Lowest Price') {
          filteredShoes.sort((a, b) => a.price.compareTo(b.price));
        } else if (sortBy == 'Highest Price') {
          filteredShoes.sort((a, b) => b.price.compareTo(a.price));
        }
      }

      emit(ShoeState.loaded(shoes: filteredShoes));
    } catch (e) {
      emit(ShoeState.error(message: e.toString()));
    }
  }

  Future<void> toggleFavorite(String shoeId) async {}
}
