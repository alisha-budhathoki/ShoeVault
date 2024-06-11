part of 'shoe_cubit.dart';

@freezed
class ShoeState with _$ShoeState {
  const factory ShoeState.loading() = ShoeLoading;

  const factory ShoeState.empty({
    required String message,
  }) = ShoeEmpty;

  const factory ShoeState.error({
    required String message,
  }) = ShoeError;

  const factory ShoeState.loaded({
    required List<ShoeViewModel> shoes,
  }) = ShoeLoaded;
}
