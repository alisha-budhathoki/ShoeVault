// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoe_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShoeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) empty,
    required TResult Function(String message) error,
    required TResult Function(List<ShoeViewModel> shoes) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? error,
    TResult? Function(List<ShoeViewModel> shoes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? empty,
    TResult Function(String message)? error,
    TResult Function(List<ShoeViewModel> shoes)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoeLoading value) loading,
    required TResult Function(ShoeEmpty value) empty,
    required TResult Function(ShoeError value) error,
    required TResult Function(ShoeLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeLoading value)? loading,
    TResult? Function(ShoeEmpty value)? empty,
    TResult? Function(ShoeError value)? error,
    TResult? Function(ShoeLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeLoading value)? loading,
    TResult Function(ShoeEmpty value)? empty,
    TResult Function(ShoeError value)? error,
    TResult Function(ShoeLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoeStateCopyWith<$Res> {
  factory $ShoeStateCopyWith(ShoeState value, $Res Function(ShoeState) then) =
      _$ShoeStateCopyWithImpl<$Res, ShoeState>;
}

/// @nodoc
class _$ShoeStateCopyWithImpl<$Res, $Val extends ShoeState>
    implements $ShoeStateCopyWith<$Res> {
  _$ShoeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShoeLoadingImplCopyWith<$Res> {
  factory _$$ShoeLoadingImplCopyWith(
          _$ShoeLoadingImpl value, $Res Function(_$ShoeLoadingImpl) then) =
      __$$ShoeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShoeLoadingImplCopyWithImpl<$Res>
    extends _$ShoeStateCopyWithImpl<$Res, _$ShoeLoadingImpl>
    implements _$$ShoeLoadingImplCopyWith<$Res> {
  __$$ShoeLoadingImplCopyWithImpl(
      _$ShoeLoadingImpl _value, $Res Function(_$ShoeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShoeLoadingImpl implements ShoeLoading {
  const _$ShoeLoadingImpl();

  @override
  String toString() {
    return 'ShoeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShoeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) empty,
    required TResult Function(String message) error,
    required TResult Function(List<ShoeViewModel> shoes) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? error,
    TResult? Function(List<ShoeViewModel> shoes)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? empty,
    TResult Function(String message)? error,
    TResult Function(List<ShoeViewModel> shoes)? loaded,
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
    required TResult Function(ShoeLoading value) loading,
    required TResult Function(ShoeEmpty value) empty,
    required TResult Function(ShoeError value) error,
    required TResult Function(ShoeLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeLoading value)? loading,
    TResult? Function(ShoeEmpty value)? empty,
    TResult? Function(ShoeError value)? error,
    TResult? Function(ShoeLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeLoading value)? loading,
    TResult Function(ShoeEmpty value)? empty,
    TResult Function(ShoeError value)? error,
    TResult Function(ShoeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShoeLoading implements ShoeState {
  const factory ShoeLoading() = _$ShoeLoadingImpl;
}

/// @nodoc
abstract class _$$ShoeEmptyImplCopyWith<$Res> {
  factory _$$ShoeEmptyImplCopyWith(
          _$ShoeEmptyImpl value, $Res Function(_$ShoeEmptyImpl) then) =
      __$$ShoeEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShoeEmptyImplCopyWithImpl<$Res>
    extends _$ShoeStateCopyWithImpl<$Res, _$ShoeEmptyImpl>
    implements _$$ShoeEmptyImplCopyWith<$Res> {
  __$$ShoeEmptyImplCopyWithImpl(
      _$ShoeEmptyImpl _value, $Res Function(_$ShoeEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShoeEmptyImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShoeEmptyImpl implements ShoeEmpty {
  const _$ShoeEmptyImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ShoeState.empty(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoeEmptyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoeEmptyImplCopyWith<_$ShoeEmptyImpl> get copyWith =>
      __$$ShoeEmptyImplCopyWithImpl<_$ShoeEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) empty,
    required TResult Function(String message) error,
    required TResult Function(List<ShoeViewModel> shoes) loaded,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? error,
    TResult? Function(List<ShoeViewModel> shoes)? loaded,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? empty,
    TResult Function(String message)? error,
    TResult Function(List<ShoeViewModel> shoes)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoeLoading value) loading,
    required TResult Function(ShoeEmpty value) empty,
    required TResult Function(ShoeError value) error,
    required TResult Function(ShoeLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeLoading value)? loading,
    TResult? Function(ShoeEmpty value)? empty,
    TResult? Function(ShoeError value)? error,
    TResult? Function(ShoeLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeLoading value)? loading,
    TResult Function(ShoeEmpty value)? empty,
    TResult Function(ShoeError value)? error,
    TResult Function(ShoeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ShoeEmpty implements ShoeState {
  const factory ShoeEmpty({required final String message}) = _$ShoeEmptyImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ShoeEmptyImplCopyWith<_$ShoeEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShoeErrorImplCopyWith<$Res> {
  factory _$$ShoeErrorImplCopyWith(
          _$ShoeErrorImpl value, $Res Function(_$ShoeErrorImpl) then) =
      __$$ShoeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShoeErrorImplCopyWithImpl<$Res>
    extends _$ShoeStateCopyWithImpl<$Res, _$ShoeErrorImpl>
    implements _$$ShoeErrorImplCopyWith<$Res> {
  __$$ShoeErrorImplCopyWithImpl(
      _$ShoeErrorImpl _value, $Res Function(_$ShoeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShoeErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShoeErrorImpl implements ShoeError {
  const _$ShoeErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ShoeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoeErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoeErrorImplCopyWith<_$ShoeErrorImpl> get copyWith =>
      __$$ShoeErrorImplCopyWithImpl<_$ShoeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) empty,
    required TResult Function(String message) error,
    required TResult Function(List<ShoeViewModel> shoes) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? error,
    TResult? Function(List<ShoeViewModel> shoes)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? empty,
    TResult Function(String message)? error,
    TResult Function(List<ShoeViewModel> shoes)? loaded,
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
    required TResult Function(ShoeLoading value) loading,
    required TResult Function(ShoeEmpty value) empty,
    required TResult Function(ShoeError value) error,
    required TResult Function(ShoeLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeLoading value)? loading,
    TResult? Function(ShoeEmpty value)? empty,
    TResult? Function(ShoeError value)? error,
    TResult? Function(ShoeLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeLoading value)? loading,
    TResult Function(ShoeEmpty value)? empty,
    TResult Function(ShoeError value)? error,
    TResult Function(ShoeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ShoeError implements ShoeState {
  const factory ShoeError({required final String message}) = _$ShoeErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ShoeErrorImplCopyWith<_$ShoeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShoeLoadedImplCopyWith<$Res> {
  factory _$$ShoeLoadedImplCopyWith(
          _$ShoeLoadedImpl value, $Res Function(_$ShoeLoadedImpl) then) =
      __$$ShoeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShoeViewModel> shoes});
}

/// @nodoc
class __$$ShoeLoadedImplCopyWithImpl<$Res>
    extends _$ShoeStateCopyWithImpl<$Res, _$ShoeLoadedImpl>
    implements _$$ShoeLoadedImplCopyWith<$Res> {
  __$$ShoeLoadedImplCopyWithImpl(
      _$ShoeLoadedImpl _value, $Res Function(_$ShoeLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoes = null,
  }) {
    return _then(_$ShoeLoadedImpl(
      shoes: null == shoes
          ? _value._shoes
          : shoes // ignore: cast_nullable_to_non_nullable
              as List<ShoeViewModel>,
    ));
  }
}

/// @nodoc

class _$ShoeLoadedImpl implements ShoeLoaded {
  const _$ShoeLoadedImpl({required final List<ShoeViewModel> shoes})
      : _shoes = shoes;

  final List<ShoeViewModel> _shoes;
  @override
  List<ShoeViewModel> get shoes {
    if (_shoes is EqualUnmodifiableListView) return _shoes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoes);
  }

  @override
  String toString() {
    return 'ShoeState.loaded(shoes: $shoes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoeLoadedImpl &&
            const DeepCollectionEquality().equals(other._shoes, _shoes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shoes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoeLoadedImplCopyWith<_$ShoeLoadedImpl> get copyWith =>
      __$$ShoeLoadedImplCopyWithImpl<_$ShoeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) empty,
    required TResult Function(String message) error,
    required TResult Function(List<ShoeViewModel> shoes) loaded,
  }) {
    return loaded(shoes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? empty,
    TResult? Function(String message)? error,
    TResult? Function(List<ShoeViewModel> shoes)? loaded,
  }) {
    return loaded?.call(shoes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? empty,
    TResult Function(String message)? error,
    TResult Function(List<ShoeViewModel> shoes)? loaded,
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
    required TResult Function(ShoeLoading value) loading,
    required TResult Function(ShoeEmpty value) empty,
    required TResult Function(ShoeError value) error,
    required TResult Function(ShoeLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoeLoading value)? loading,
    TResult? Function(ShoeEmpty value)? empty,
    TResult? Function(ShoeError value)? error,
    TResult? Function(ShoeLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoeLoading value)? loading,
    TResult Function(ShoeEmpty value)? empty,
    TResult Function(ShoeError value)? error,
    TResult Function(ShoeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ShoeLoaded implements ShoeState {
  const factory ShoeLoaded({required final List<ShoeViewModel> shoes}) =
      _$ShoeLoadedImpl;

  List<ShoeViewModel> get shoes;
  @JsonKey(ignore: true)
  _$$ShoeLoadedImplCopyWith<_$ShoeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
