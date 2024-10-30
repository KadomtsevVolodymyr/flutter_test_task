part of 'store_cubit.dart';

@freezed
class StoreState with _$StoreState {
  const factory StoreState.initial() = Initial;

  const factory StoreState.loading() = Loading;

  const factory StoreState.loaded() = Loaded;

  const factory StoreState.error() = Error;
}
