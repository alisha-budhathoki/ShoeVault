import 'package:freezed_annotation/freezed_annotation.dart';

part 'shoe.freezed.dart';
part 'shoe.g.dart';

@freezed
class Shoe with _$Shoe {
  const factory Shoe({
    required String id,
    required String name,
    required String brand,
    required int reviews,
    required int size,
    required String color,
    required double price,
    required String description,
  }) = _Shoe;

  factory Shoe.fromJson(Map<String, dynamic> json) => _$ShoeFromJson(json);
}
