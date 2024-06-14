import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shoes_filter_state.dart';
part 'shoes_filter_cubit.freezed.dart';

class ShoesFilterCubit extends Cubit<ShoeFilterState> {
  ShoesFilterCubit() : super(const ShoeFilterState());

  void updateBrand(String? brand) {
    emit(state.copyWith(selectedBrand: brand));
  }

  void updatePriceRange(double? startPriceRange, double? endPriceRange) {
    emit(state.copyWith(
        startPriceRange: startPriceRange, endPriceRange: endPriceRange));
  }

  void updateSortBy(String? sortBy) {
    emit(state.copyWith(selectedSortBy: sortBy));
  }

  void updateGender(String? gender) {
    emit(state.copyWith(selectedGender: gender));
  }

  void updateColor(String? color) {
    emit(state.copyWith(selectedColor: color));
  }

  void resetFilters() {
    emit(const ShoeFilterState());
  }
}
