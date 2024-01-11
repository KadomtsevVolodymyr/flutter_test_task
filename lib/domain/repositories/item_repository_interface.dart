import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/domain/entities/result.dart';

abstract interface class IItemRepository {
  Future<Result<List<Item>>> fetchItems();
}
