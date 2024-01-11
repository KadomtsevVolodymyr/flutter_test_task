import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/domain/repositories/item_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_test_task/domain/entities/result.dart';

part 'list_screen_state.dart';

part 'list_cubit.freezed.dart';

class ListCubit extends Cubit<ListScreenState> {
  ListCubit({required this.iItemRepository})
      : super(const ListScreenState.initial());

  final IItemRepository iItemRepository;

  Future<void> loadItems() async {
    try {
      emit(const ListScreenState.loading());
      final Result<List<Item>> itemsResult = await iItemRepository.fetchItems();

      itemsResult.when(
        success: (List<Item> items) =>
            emit(ListScreenState.loaded(item: items)),
        error: (Object error) => emit(ListScreenState.error(exception: error)),
      );
    } catch (e) {
      emit(ListScreenState.error(exception: e));
    }
  }
}
