import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_vault/data/models/shoes/shoe_response.dart';

part 'shoe_list_response.freezed.dart';
part 'shoe_list_response.g.dart';

@freezed
class ShoeListResponse with _$ShoeListResponse {
  const factory ShoeListResponse({
    required List<ShoeResponse> shoes,
    String? nextPageToken,
  }) = _ShoeListResponse;

  factory ShoeListResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoeListResponseFromJson(json);
}
