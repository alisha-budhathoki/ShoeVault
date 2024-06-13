import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_vault/data/models/shoes/shoe_response.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';

part 'shoe_detail_state.dart';
part 'shoe_detail_cubit.freezed.dart';

class ShoeDetailCubit extends Cubit<ShoeDetailState> {
  ShoeDetailCubit({
    required this.shoeService,
  }) : super(const ShoeDetailLoading());

  final ShoeService shoeService;

  Future<void> fetchShoeDetail(String shoeId) async {
    try {
      emit(const ShoeDetailLoading());
      final shoe = await shoeService.fetchShoeById(shoeId);
      if (shoe != null) {
        // emit(ShoeDetailLoaded(shoes:[]));
      } else {
        emit(const ShoeDetailError(message: 'Shoe not found'));
      }
    } catch (e) {
      emit(ShoeDetailError(message: 'Error fetching shoe details: $e'));
    }
  }
}
