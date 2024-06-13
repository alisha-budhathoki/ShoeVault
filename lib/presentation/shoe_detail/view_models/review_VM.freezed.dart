// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_VM.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewVM _$ReviewVMFromJson(Map<String, dynamic> json) {
  return _ReviewVM.fromJson(json);
}

/// @nodoc
mixin _$ReviewVM {
  String get reviewerName => throw _privateConstructorUsedError;
  DateTime get timeOfReview => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewVMCopyWith<ReviewVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewVMCopyWith<$Res> {
  factory $ReviewVMCopyWith(ReviewVM value, $Res Function(ReviewVM) then) =
      _$ReviewVMCopyWithImpl<$Res, ReviewVM>;
  @useResult
  $Res call(
      {String reviewerName,
      DateTime timeOfReview,
      double rating,
      String comment});
}

/// @nodoc
class _$ReviewVMCopyWithImpl<$Res, $Val extends ReviewVM>
    implements $ReviewVMCopyWith<$Res> {
  _$ReviewVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewerName = null,
    Object? timeOfReview = null,
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      timeOfReview: null == timeOfReview
          ? _value.timeOfReview
          : timeOfReview // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewVMImplCopyWith<$Res>
    implements $ReviewVMCopyWith<$Res> {
  factory _$$ReviewVMImplCopyWith(
          _$ReviewVMImpl value, $Res Function(_$ReviewVMImpl) then) =
      __$$ReviewVMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reviewerName,
      DateTime timeOfReview,
      double rating,
      String comment});
}

/// @nodoc
class __$$ReviewVMImplCopyWithImpl<$Res>
    extends _$ReviewVMCopyWithImpl<$Res, _$ReviewVMImpl>
    implements _$$ReviewVMImplCopyWith<$Res> {
  __$$ReviewVMImplCopyWithImpl(
      _$ReviewVMImpl _value, $Res Function(_$ReviewVMImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewerName = null,
    Object? timeOfReview = null,
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_$ReviewVMImpl(
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      timeOfReview: null == timeOfReview
          ? _value.timeOfReview
          : timeOfReview // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewVMImpl implements _ReviewVM {
  const _$ReviewVMImpl(
      {required this.reviewerName,
      required this.timeOfReview,
      required this.rating,
      required this.comment});

  factory _$ReviewVMImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewVMImplFromJson(json);

  @override
  final String reviewerName;
  @override
  final DateTime timeOfReview;
  @override
  final double rating;
  @override
  final String comment;

  @override
  String toString() {
    return 'ReviewVM(reviewerName: $reviewerName, timeOfReview: $timeOfReview, rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewVMImpl &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.timeOfReview, timeOfReview) ||
                other.timeOfReview == timeOfReview) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reviewerName, timeOfReview, rating, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewVMImplCopyWith<_$ReviewVMImpl> get copyWith =>
      __$$ReviewVMImplCopyWithImpl<_$ReviewVMImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewVMImplToJson(
      this,
    );
  }
}

abstract class _ReviewVM implements ReviewVM {
  const factory _ReviewVM(
      {required final String reviewerName,
      required final DateTime timeOfReview,
      required final double rating,
      required final String comment}) = _$ReviewVMImpl;

  factory _ReviewVM.fromJson(Map<String, dynamic> json) =
      _$ReviewVMImpl.fromJson;

  @override
  String get reviewerName;
  @override
  DateTime get timeOfReview;
  @override
  double get rating;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$ReviewVMImplCopyWith<_$ReviewVMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
