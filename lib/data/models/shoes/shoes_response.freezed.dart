// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShoesResponse _$ShoesResponseFromJson(Map<String, dynamic> json) {
  return _ShoesResponse.fromJson(json);
}

/// @nodoc
mixin _$ShoesResponse {
  List<Shoe> get shoes => throw _privateConstructorUsedError;
  String? get nextPageToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoesResponseCopyWith<ShoesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoesResponseCopyWith<$Res> {
  factory $ShoesResponseCopyWith(
          ShoesResponse value, $Res Function(ShoesResponse) then) =
      _$ShoesResponseCopyWithImpl<$Res, ShoesResponse>;
  @useResult
  $Res call({List<Shoe> shoes, String? nextPageToken});
}

/// @nodoc
class _$ShoesResponseCopyWithImpl<$Res, $Val extends ShoesResponse>
    implements $ShoesResponseCopyWith<$Res> {
  _$ShoesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoes = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_value.copyWith(
      shoes: null == shoes
          ? _value.shoes
          : shoes // ignore: cast_nullable_to_non_nullable
              as List<Shoe>,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoesResponseImplCopyWith<$Res>
    implements $ShoesResponseCopyWith<$Res> {
  factory _$$ShoesResponseImplCopyWith(
          _$ShoesResponseImpl value, $Res Function(_$ShoesResponseImpl) then) =
      __$$ShoesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Shoe> shoes, String? nextPageToken});
}

/// @nodoc
class __$$ShoesResponseImplCopyWithImpl<$Res>
    extends _$ShoesResponseCopyWithImpl<$Res, _$ShoesResponseImpl>
    implements _$$ShoesResponseImplCopyWith<$Res> {
  __$$ShoesResponseImplCopyWithImpl(
      _$ShoesResponseImpl _value, $Res Function(_$ShoesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoes = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_$ShoesResponseImpl(
      shoes: null == shoes
          ? _value._shoes
          : shoes // ignore: cast_nullable_to_non_nullable
              as List<Shoe>,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoesResponseImpl implements _ShoesResponse {
  const _$ShoesResponseImpl(
      {required final List<Shoe> shoes, this.nextPageToken})
      : _shoes = shoes;

  factory _$ShoesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoesResponseImplFromJson(json);

  final List<Shoe> _shoes;
  @override
  List<Shoe> get shoes {
    if (_shoes is EqualUnmodifiableListView) return _shoes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoes);
  }

  @override
  final String? nextPageToken;

  @override
  String toString() {
    return 'ShoesResponse(shoes: $shoes, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoesResponseImpl &&
            const DeepCollectionEquality().equals(other._shoes, _shoes) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_shoes), nextPageToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoesResponseImplCopyWith<_$ShoesResponseImpl> get copyWith =>
      __$$ShoesResponseImplCopyWithImpl<_$ShoesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoesResponseImplToJson(
      this,
    );
  }
}

abstract class _ShoesResponse implements ShoesResponse {
  const factory _ShoesResponse(
      {required final List<Shoe> shoes,
      final String? nextPageToken}) = _$ShoesResponseImpl;

  factory _ShoesResponse.fromJson(Map<String, dynamic> json) =
      _$ShoesResponseImpl.fromJson;

  @override
  List<Shoe> get shoes;
  @override
  String? get nextPageToken;
  @override
  @JsonKey(ignore: true)
  _$$ShoesResponseImplCopyWith<_$ShoesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
