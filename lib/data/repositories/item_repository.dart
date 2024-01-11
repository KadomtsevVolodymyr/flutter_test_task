import 'package:flutter_test_task/data/datasource/network/api/item/item_api_interface.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/domain/entities/result.dart';
import 'package:flutter_test_task/domain/repositories/item_repository_interface.dart';

class ItemRepository implements IItemRepository {
  ItemRepository(this.itemApi);

  final IItemApi itemApi;

  @override
  Future<Result<List<Item>>> fetchItems() async {
    final result = await itemApi.getItems();
    return result.when(onSuccess: Result.success, onError: Result.error);
  }
}
