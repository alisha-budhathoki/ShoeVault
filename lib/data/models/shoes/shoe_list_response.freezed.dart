// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoe_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShoeListResponse _$ShoeListResponseFromJson(Map<String, dynamic> json) {
  return _ShoeListResponse.fromJson(json);
}

/// @nodoc
mixin _$ShoeListResponse {
  List<ShoeResponse> get shoes => throw _privateConstructorUsedError;
  String? get nextPageToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoeListResponseCopyWith<ShoeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoeListResponseCopyWith<$Res> {
  factory $ShoeListResponseCopyWith(
          ShoeListResponse value, $Res Function(ShoeListResponse) then) =
      _$ShoeListResponseCopyWithImpl<$Res, ShoeListResponse>;
  @useResult
  $Res call({List<ShoeResponse> shoes, String? nextPageToken});
}

/// @nodoc
class _$ShoeListResponseCopyWithImpl<$Res, $Val extends ShoeListResponse>
    implements $ShoeListResponseCopyWith<$Res> {
  _$ShoeListResponseCopyWithImpl(this._value, this._then);

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
              as List<ShoeResponse>,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoeListResponseImplCopyWith<$Res>
    implements $ShoeListResponseCopyWith<$Res> {
  factory _$$ShoeListResponseImplCopyWith(_$ShoeListResponseImpl value,
          $Res Function(_$ShoeListResponseImpl) then) =
      __$$ShoeListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ShoeResponse> shoes, String? nextPageToken});
}

/// @nodoc
class __$$ShoeListResponseImplCopyWithImpl<$Res>
    extends _$ShoeListResponseCopyWithImpl<$Res, _$ShoeListResponseImpl>
    implements _$$ShoeListResponseImplCopyWith<$Res> {
  __$$ShoeListResponseImplCopyWithImpl(_$ShoeListResponseImpl _value,
      $Res Function(_$ShoeListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoes = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_$ShoeListResponseImpl(
      shoes: null == shoes
          ? _value._shoes
          : shoes // ignore: cast_nullable_to_non_nullable
              as List<ShoeResponse>,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoeListResponseImpl implements _ShoeListResponse {
  const _$ShoeListResponseImpl(
      {required final List<ShoeResponse> shoes, this.nextPageToken})
      : _shoes = shoes;

  factory _$ShoeListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoeListResponseImplFromJson(json);

  final List<ShoeResponse> _shoes;
  @override
  List<ShoeResponse> get shoes {
    if (_shoes is EqualUnmodifiableListView) return _shoes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoes);
  }

  @override
  final String? nextPageToken;

  @override
  String toString() {
    return 'ShoeListResponse(shoes: $shoes, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoeListResponseImpl &&
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
  _$$ShoeListResponseImplCopyWith<_$ShoeListResponseImpl> get copyWith =>
      __$$ShoeListResponseImplCopyWithImpl<_$ShoeListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoeListResponseImplToJson(
      this,
    );
  }
}

abstract class _ShoeListResponse implements ShoeListResponse {
  const factory _ShoeListResponse(
      {required final List<ShoeResponse> shoes,
      final String? nextPageToken}) = _$ShoeListResponseImpl;

  factory _ShoeListResponse.fromJson(Map<String, dynamic> json) =
      _$ShoeListResponseImpl.fromJson;

  @override
  List<ShoeResponse> get shoes;
  @override
  String? get nextPageToken;
  @override
  @JsonKey(ignore: true)
  _$$ShoeListResponseImplCopyWith<_$ShoeListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
