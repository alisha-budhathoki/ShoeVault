part of 'shoes_filter_cubit.dart';

@freezed
class ShoeFilterState with _$ShoeFilterState {
  const factory ShoeFilterState({
    String? selectedBrand,
    double? startPriceRange,
    double? endPriceRange,
    String? selectedSortBy,
    String? selectedGender,
    String? selectedColor,
  }) = _ShoeFilterState;
}
