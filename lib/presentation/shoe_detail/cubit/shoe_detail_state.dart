part of 'shoe_detail_cubit.dart';

@freezed
class ShoeDetailState with _$ShoeDetailState {
  const factory ShoeDetailState.loading() = ShoeDetailLoading;
  const factory ShoeDetailState.empty() = ShoeDetailEmpty;
  const factory ShoeDetailState.error({
    required String message,
  }) = ShoeDetailError;
  const factory ShoeDetailState.loaded({
    required ShoeDetailVM shoe,
  }) = ShoeDetailLoaded;
}
