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

  Future<void> fetchShoes() async {
    try {
      final shoes = await shoeService.fetchShoes();
      final shoeViewModels = shoes.map(ShoeViewModel.fromShoe).toList();
      emit(ShoeState.loaded(shoes: shoeViewModels));
    } catch (e) {
      emit(ShoeState.error(message: e.toString()));
    }
  }

  Future<void> toggleFavorite(String shoeId) async {}
}
