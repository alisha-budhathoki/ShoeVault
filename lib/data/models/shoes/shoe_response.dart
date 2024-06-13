// shoe.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shoe_response.freezed.dart';
part 'shoe_response.g.dart';

@freezed
class ShoeResponse with _$ShoeResponse {
  const factory ShoeResponse({
    String? id,
    required String name,
    required String brand,
    required String description,
    required double price,
    String? brandImg,
    required double rating,
    required List<String> sizes,
    List<String>? images,
    required List<String> colors,
    required String genderType,
    required List<Review> reviews,
  }) = _ShoeResponse;

  factory ShoeResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoeResponseFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required String reviewerName,
    required String timeOfReview,
    required double rating,
    required String comment,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
