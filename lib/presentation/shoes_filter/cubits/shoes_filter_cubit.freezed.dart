// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoes_filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShoeFilterState {
  String? get selectedBrand => throw _privateConstructorUsedError;
  double? get startPriceRange => throw _privateConstructorUsedError;
  double? get endPriceRange => throw _privateConstructorUsedError;
  String? get selectedSortBy => throw _privateConstructorUsedError;
  String? get selectedGender => throw _privateConstructorUsedError;
  String? get selectedColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoeFilterStateCopyWith<ShoeFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoeFilterStateCopyWith<$Res> {
  factory $ShoeFilterStateCopyWith(
          ShoeFilterState value, $Res Function(ShoeFilterState) then) =
      _$ShoeFilterStateCopyWithImpl<$Res, ShoeFilterState>;
  @useResult
  $Res call(
      {String? selectedBrand,
      double? startPriceRange,
      double? endPriceRange,
      String? selectedSortBy,
      String? selectedGender,
      String? selectedColor});
}

/// @nodoc
class _$ShoeFilterStateCopyWithImpl<$Res, $Val extends ShoeFilterState>
    implements $ShoeFilterStateCopyWith<$Res> {
  _$ShoeFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBrand = freezed,
    Object? startPriceRange = freezed,
    Object? endPriceRange = freezed,
    Object? selectedSortBy = freezed,
    Object? selectedGender = freezed,
    Object? selectedColor = freezed,
  }) {
    return _then(_value.copyWith(
      selectedBrand: freezed == selectedBrand
          ? _value.selectedBrand
          : selectedBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      startPriceRange: freezed == startPriceRange
          ? _value.startPriceRange
          : startPriceRange // ignore: cast_nullable_to_non_nullable
              as double?,
      endPriceRange: freezed == endPriceRange
          ? _value.endPriceRange
          : endPriceRange // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedSortBy: freezed == selectedSortBy
          ? _value.selectedSortBy
          : selectedSortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedGender: freezed == selectedGender
          ? _value.selectedGender
          : selectedGender // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedColor: freezed == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoeFilterStateImplCopyWith<$Res>
    implements $ShoeFilterStateCopyWith<$Res> {
  factory _$$ShoeFilterStateImplCopyWith(_$ShoeFilterStateImpl value,
          $Res Function(_$ShoeFilterStateImpl) then) =
      __$$ShoeFilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? selectedBrand,
      double? startPriceRange,
      double? endPriceRange,
      String? selectedSortBy,
      String? selectedGender,
      String? selectedColor});
}

/// @nodoc
class __$$ShoeFilterStateImplCopyWithImpl<$Res>
    extends _$ShoeFilterStateCopyWithImpl<$Res, _$ShoeFilterStateImpl>
    implements _$$ShoeFilterStateImplCopyWith<$Res> {
  __$$ShoeFilterStateImplCopyWithImpl(
      _$ShoeFilterStateImpl _value, $Res Function(_$ShoeFilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBrand = freezed,
    Object? startPriceRange = freezed,
    Object? endPriceRange = freezed,
    Object? selectedSortBy = freezed,
    Object? selectedGender = freezed,
    Object? selectedColor = freezed,
  }) {
    return _then(_$ShoeFilterStateImpl(
      selectedBrand: freezed == selectedBrand
          ? _value.selectedBrand
          : selectedBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      startPriceRange: freezed == startPriceRange
          ? _value.startPriceRange
          : startPriceRange // ignore: cast_nullable_to_non_nullable
              as double?,
      endPriceRange: freezed == endPriceRange
          ? _value.endPriceRange
          : endPriceRange // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedSortBy: freezed == selectedSortBy
          ? _value.selectedSortBy
          : selectedSortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedGender: freezed == selectedGender
          ? _value.selectedGender
          : selectedGender // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedColor: freezed == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShoeFilterStateImpl implements _ShoeFilterState {
  const _$ShoeFilterStateImpl(
      {this.selectedBrand,
      this.startPriceRange,
      this.endPriceRange,
      this.selectedSortBy,
      this.selectedGender,
      this.selectedColor});

  @override
  final String? selectedBrand;
  @override
  final double? startPriceRange;
  @override
  final double? endPriceRange;
  @override
  final String? selectedSortBy;
  @override
  final String? selectedGender;
  @override
  final String? selectedColor;

  @override
  String toString() {
    return 'ShoeFilterState(selectedBrand: $selectedBrand, startPriceRange: $startPriceRange, endPriceRange: $endPriceRange, selectedSortBy: $selectedSortBy, selectedGender: $selectedGender, selectedColor: $selectedColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoeFilterStateImpl &&
            (identical(other.selectedBrand, selectedBrand) ||
                other.selectedBrand == selectedBrand) &&
            (identical(other.startPriceRange, startPriceRange) ||
                other.startPriceRange == startPriceRange) &&
            (identical(other.endPriceRange, endPriceRange) ||
                other.endPriceRange == endPriceRange) &&
            (identical(other.selectedSortBy, selectedSortBy) ||
                other.selectedSortBy == selectedSortBy) &&
            (identical(other.selectedGender, selectedGender) ||
                other.selectedGender == selectedGender) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedBrand, startPriceRange,
      endPriceRange, selectedSortBy, selectedGender, selectedColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoeFilterStateImplCopyWith<_$ShoeFilterStateImpl> get copyWith =>
      __$$ShoeFilterStateImplCopyWithImpl<_$ShoeFilterStateImpl>(
          this, _$identity);
}

abstract class _ShoeFilterState implements ShoeFilterState {
  const factory _ShoeFilterState(
      {final String? selectedBrand,
      final double? startPriceRange,
      final double? endPriceRange,
      final String? selectedSortBy,
      final String? selectedGender,
      final String? selectedColor}) = _$ShoeFilterStateImpl;

  @override
  String? get selectedBrand;
  @override
  double? get startPriceRange;
  @override
  double? get endPriceRange;
  @override
  String? get selectedSortBy;
  @override
  String? get selectedGender;
  @override
  String? get selectedColor;
  @override
  @JsonKey(ignore: true)
  _$$ShoeFilterStateImplCopyWith<_$ShoeFilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
