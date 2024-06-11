import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_vault/data/models/shoes/shoe.dart';

part 'shoes_response.freezed.dart';
part 'shoes_response.g.dart';

@freezed
class ShoesResponse with _$ShoesResponse {
  const factory ShoesResponse({
    required List<Shoe> shoes,
    String? nextPageToken,
  }) = _ShoesResponse;

  factory ShoesResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoesResponseFromJson(json);
}
