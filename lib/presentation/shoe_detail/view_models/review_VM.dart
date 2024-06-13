// review_view_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_vault/data/models/shoes/shoe_response.dart';

part 'review_VM.freezed.dart';
part 'review_VM.g.dart';

@freezed
class ReviewVM with _$ReviewVM {
  const factory ReviewVM({
    required String reviewerName,
    required DateTime timeOfReview,
    required double rating,
    required String comment,
  }) = _ReviewVM;

  factory ReviewVM.fromJson(Map<String, dynamic> json) =>
      _$ReviewVMFromJson(json);
  factory ReviewVM.fromReview(Review review) {
    return ReviewVM(
      reviewerName: review.reviewerName,
      timeOfReview: DateTime.parse(review.timeOfReview),
      rating: review.rating,
      comment: review.comment,
    );
  }
}
