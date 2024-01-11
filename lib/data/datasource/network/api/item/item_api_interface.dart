import 'package:flutter_test_task/data/datasource/network/exchange_models/response.dart';
import 'package:flutter_test_task/data/datasource/network/services/network_service/network_service_interface.dart';
import 'package:flutter_test_task/data/model/item_model.dart';

abstract interface class IItemApi {
  IItemApi(INetworkService networkService);

  Future<NetworkResponse<List<Item>>> getItems();
}
