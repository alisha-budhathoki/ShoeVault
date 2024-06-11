import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_vault/data/models/shoes/shoe.dart';

part 'shoe_view_model.freezed.dart';

@freezed
class ShoeViewModel with _$ShoeViewModel {
  const factory ShoeViewModel({
    required String id,
    required String name,
    required String brand,
    required int size,
    required String color,
    required double price,
    required String description,
    required bool isFavorite,
  }) = _ShoeViewModel;

  factory ShoeViewModel.fromShoe(Shoe shoe) {
    return ShoeViewModel(
      id: shoe.id,
      name: shoe.name,
      brand: shoe.brand,
      size: shoe.size,
      color: shoe.color,
      price: shoe.price,
      description: shoe.description,
      isFavorite: false,
    );
  }
}
