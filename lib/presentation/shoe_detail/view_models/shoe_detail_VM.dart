import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_vault/data/models/shoes/shoe_response.dart';
import 'package:shoe_vault/presentation/shoe_detail/view_models/review_VM.dart';

part 'shoe_detail_VM.freezed.dart';

@freezed
class ShoeDetailVM with _$ShoeDetailVM {
  const factory ShoeDetailVM({
    required String id,
    required String name,
    required String brand,
    required String description,
    required double price,
    required String brandImg,
    required double rating,
    required List<String> sizes,
    required List<String> productImages,
    required List<String> colors,
    required String genderType,
    required List<ReviewVM> reviews,
    String? selectedColor,
  }) = _ShoeDetailVM;

  factory ShoeDetailVM.fromShoe(ShoeResponse shoe) {
    return ShoeDetailVM(
      brandImg: shoe.brandImg ?? '',
      productImages: shoe.images ?? [],
      rating: shoe.rating,
      id: shoe.id ?? '',
      name: shoe.name,
      brand: shoe.brand,
      sizes: shoe.sizes,
      colors: shoe.colors,
      price: shoe.price,
      description: shoe.description,
      reviews: shoe.reviews.map(ReviewVM.fromReview).toList(),
      genderType: shoe.genderType,
    );
  }
}
