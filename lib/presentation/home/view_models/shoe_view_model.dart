import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_vault/data/models/shoes/shoe_response.dart';

part 'shoe_view_model.freezed.dart';

@freezed
class ShoeViewModel with _$ShoeViewModel {
  const factory ShoeViewModel({
    required String id,
    required String name,
    required String brand,
    required double price,
    required String description,
    required String productImg,
    required String brandLogo,
    required double rating,
    required int reviews,
    required String genderType,
  }) = _ShoeViewModel;

  factory ShoeViewModel.fromShoe(ShoeResponse shoe) {
    return ShoeViewModel(
      reviews: shoe.reviews.length,
      brandLogo: shoe.brandImg ?? '',
      productImg: shoe.images != null ? shoe.images![0] : '',
      rating: shoe.rating,
      id: shoe.id ?? '',
      name: shoe.name,
      brand: shoe.brand,
      price: shoe.price,
      description: shoe.description,
      genderType: shoe.genderType,
    );
  }
}
