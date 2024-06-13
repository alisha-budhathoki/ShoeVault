// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoe_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShoeDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message) error,
    required TResult Function(ShoeResponse shoes) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
    TResult? Function(ShoeResponse shoes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message)? error,
    TResult Function(ShoeResponse shoes)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoeDetailLoading value) loading,
    required TResult Function(ShoeDetailEmpty value) empty,
    required TResult Function(ShoeDetailError value) error,
    required TResult Function(ShoeDetailLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeDetailLoading value)? loading,
    TResult? Function(ShoeDetailEmpty value)? empty,
    TResult? Function(ShoeDetailError value)? error,
    TResult? Function(ShoeDetailLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeDetailLoading value)? loading,
    TResult Function(ShoeDetailEmpty value)? empty,
    TResult Function(ShoeDetailError value)? error,
    TResult Function(ShoeDetailLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoeDetailStateCopyWith<$Res> {
  factory $ShoeDetailStateCopyWith(
          ShoeDetailState value, $Res Function(ShoeDetailState) then) =
      _$ShoeDetailStateCopyWithImpl<$Res, ShoeDetailState>;
}

/// @nodoc
class _$ShoeDetailStateCopyWithImpl<$Res, $Val extends ShoeDetailState>
    implements $ShoeDetailStateCopyWith<$Res> {
  _$ShoeDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShoeDetailLoadingImplCopyWith<$Res> {
  factory _$$ShoeDetailLoadingImplCopyWith(_$ShoeDetailLoadingImpl value,
          $Res Function(_$ShoeDetailLoadingImpl) then) =
      __$$ShoeDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShoeDetailLoadingImplCopyWithImpl<$Res>
    extends _$ShoeDetailStateCopyWithImpl<$Res, _$ShoeDetailLoadingImpl>
    implements _$$ShoeDetailLoadingImplCopyWith<$Res> {
  __$$ShoeDetailLoadingImplCopyWithImpl(_$ShoeDetailLoadingImpl _value,
      $Res Function(_$ShoeDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShoeDetailLoadingImpl implements ShoeDetailLoading {
  const _$ShoeDetailLoadingImpl();

  @override
  String toString() {
    return 'ShoeDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShoeDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message) error,
    required TResult Function(ShoeResponse shoes) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
    TResult? Function(ShoeResponse shoes)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message)? error,
    TResult Function(ShoeResponse shoes)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoeDetailLoading value) loading,
    required TResult Function(ShoeDetailEmpty value) empty,
    required TResult Function(ShoeDetailError value) error,
    required TResult Function(ShoeDetailLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeDetailLoading value)? loading,
    TResult? Function(ShoeDetailEmpty value)? empty,
    TResult? Function(ShoeDetailError value)? error,
    TResult? Function(ShoeDetailLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeDetailLoading value)? loading,
    TResult Function(ShoeDetailEmpty value)? empty,
    TResult Function(ShoeDetailError value)? error,
    TResult Function(ShoeDetailLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShoeDetailLoading implements ShoeDetailState {
  const factory ShoeDetailLoading() = _$ShoeDetailLoadingImpl;
}

/// @nodoc
abstract class _$$ShoeDetailEmptyImplCopyWith<$Res> {
  factory _$$ShoeDetailEmptyImplCopyWith(_$ShoeDetailEmptyImpl value,
          $Res Function(_$ShoeDetailEmptyImpl) then) =
      __$$ShoeDetailEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShoeDetailEmptyImplCopyWithImpl<$Res>
    extends _$ShoeDetailStateCopyWithImpl<$Res, _$ShoeDetailEmptyImpl>
    implements _$$ShoeDetailEmptyImplCopyWith<$Res> {
  __$$ShoeDetailEmptyImplCopyWithImpl(
      _$ShoeDetailEmptyImpl _value, $Res Function(_$ShoeDetailEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShoeDetailEmptyImpl implements ShoeDetailEmpty {
  const _$ShoeDetailEmptyImpl();

  @override
  String toString() {
    return 'ShoeDetailState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShoeDetailEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message) error,
    required TResult Function(ShoeResponse shoes) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
    TResult? Function(ShoeResponse shoes)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message)? error,
    TResult Function(ShoeResponse shoes)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoeDetailLoading value) loading,
    required TResult Function(ShoeDetailEmpty value) empty,
    required TResult Function(ShoeDetailError value) error,
    required TResult Function(ShoeDetailLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeDetailLoading value)? loading,
    TResult? Function(ShoeDetailEmpty value)? empty,
    TResult? Function(ShoeDetailError value)? error,
    TResult? Function(ShoeDetailLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeDetailLoading value)? loading,
    TResult Function(ShoeDetailEmpty value)? empty,
    TResult Function(ShoeDetailError value)? error,
    TResult Function(ShoeDetailLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ShoeDetailEmpty implements ShoeDetailState {
  const factory ShoeDetailEmpty() = _$ShoeDetailEmptyImpl;
}

/// @nodoc
abstract class _$$ShoeDetailErrorImplCopyWith<$Res> {
  factory _$$ShoeDetailErrorImplCopyWith(_$ShoeDetailErrorImpl value,
          $Res Function(_$ShoeDetailErrorImpl) then) =
      __$$ShoeDetailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShoeDetailErrorImplCopyWithImpl<$Res>
    extends _$ShoeDetailStateCopyWithImpl<$Res, _$ShoeDetailErrorImpl>
    implements _$$ShoeDetailErrorImplCopyWith<$Res> {
  __$$ShoeDetailErrorImplCopyWithImpl(
      _$ShoeDetailErrorImpl _value, $Res Function(_$ShoeDetailErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShoeDetailErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShoeDetailErrorImpl implements ShoeDetailError {
  const _$ShoeDetailErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ShoeDetailState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoeDetailErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoeDetailErrorImplCopyWith<_$ShoeDetailErrorImpl> get copyWith =>
      __$$ShoeDetailErrorImplCopyWithImpl<_$ShoeDetailErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message) error,
    required TResult Function(ShoeResponse shoes) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
    TResult? Function(ShoeResponse shoes)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message)? error,
    TResult Function(ShoeResponse shoes)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoeDetailLoading value) loading,
    required TResult Function(ShoeDetailEmpty value) empty,
    required TResult Function(ShoeDetailError value) error,
    required TResult Function(ShoeDetailLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeDetailLoading value)? loading,
    TResult? Function(ShoeDetailEmpty value)? empty,
    TResult? Function(ShoeDetailError value)? error,
    TResult? Function(ShoeDetailLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeDetailLoading value)? loading,
    TResult Function(ShoeDetailEmpty value)? empty,
    TResult Function(ShoeDetailError value)? error,
    TResult Function(ShoeDetailLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ShoeDetailError implements ShoeDetailState {
  const factory ShoeDetailError({required final String message}) =
      _$ShoeDetailErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ShoeDetailErrorImplCopyWith<_$ShoeDetailErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShoeDetailLoadedImplCopyWith<$Res> {
  factory _$$ShoeDetailLoadedImplCopyWith(_$ShoeDetailLoadedImpl value,
          $Res Function(_$ShoeDetailLoadedImpl) then) =
      __$$ShoeDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoeResponse shoes});

  $ShoeResponseCopyWith<$Res> get shoes;
}

/// @nodoc
class __$$ShoeDetailLoadedImplCopyWithImpl<$Res>
    extends _$ShoeDetailStateCopyWithImpl<$Res, _$ShoeDetailLoadedImpl>
    implements _$$ShoeDetailLoadedImplCopyWith<$Res> {
  __$$ShoeDetailLoadedImplCopyWithImpl(_$ShoeDetailLoadedImpl _value,
      $Res Function(_$ShoeDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoes = null,
  }) {
    return _then(_$ShoeDetailLoadedImpl(
      shoes: null == shoes
          ? _value.shoes
          : shoes // ignore: cast_nullable_to_non_nullable
              as ShoeResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoeResponseCopyWith<$Res> get shoes {
    return $ShoeResponseCopyWith<$Res>(_value.shoes, (value) {
      return _then(_value.copyWith(shoes: value));
    });
  }
}

/// @nodoc

class _$ShoeDetailLoadedImpl implements ShoeDetailLoaded {
  const _$ShoeDetailLoadedImpl({required this.shoes});

  @override
  final ShoeResponse shoes;

  @override
  String toString() {
    return 'ShoeDetailState.loaded(shoes: $shoes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoeDetailLoadedImpl &&
            (identical(other.shoes, shoes) || other.shoes == shoes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shoes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoeDetailLoadedImplCopyWith<_$ShoeDetailLoadedImpl> get copyWith =>
      __$$ShoeDetailLoadedImplCopyWithImpl<_$ShoeDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message) error,
    required TResult Function(ShoeResponse shoes) loaded,
  }) {
    return loaded(shoes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
    TResult? Function(ShoeResponse shoes)? loaded,
  }) {
    return loaded?.call(shoes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message)? error,
    TResult Function(ShoeResponse shoes)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(shoes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoeDetailLoading value) loading,
    required TResult Function(ShoeDetailEmpty value) empty,
    required TResult Function(ShoeDetailError value) error,
    required TResult Function(ShoeDetailLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeDetailLoading value)? loading,
    TResult? Function(ShoeDetailEmpty value)? empty,
    TResult? Function(ShoeDetailError value)? error,
    TResult? Function(ShoeDetailLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeDetailLoading value)? loading,
    TResult Function(ShoeDetailEmpty value)? empty,
    TResult Function(ShoeDetailError value)? error,
    TResult Function(ShoeDetailLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ShoeDetailLoaded implements ShoeDetailState {
  const factory ShoeDetailLoaded({required final ShoeResponse shoes}) =
      _$ShoeDetailLoadedImpl;

  ShoeResponse get shoes;
  @JsonKey(ignore: true)
  _$$ShoeDetailLoadedImplCopyWith<_$ShoeDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
