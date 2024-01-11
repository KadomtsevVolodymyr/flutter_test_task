part of 'list_cubit.dart';

@freezed
class ListScreenState with _$ListScreenState {
  const factory ListScreenState.initial() = ListInitialState;

  const factory ListScreenState.loading() = ListLoadingState;

  const factory ListScreenState.loaded({
    final List<Item>? item,
  }) = ListLoadedState;

  const factory ListScreenState.error({final Object? exception}) =
      ListErrorState;
}
