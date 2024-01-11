import 'package:flutter_test_task/data/datasource/network/api/item/item_api_interface.dart';
import 'package:flutter_test_task/data/datasource/network/exchange_models/request.dart';
import 'package:flutter_test_task/data/datasource/network/exchange_models/response.dart';
import 'package:flutter_test_task/data/datasource/network/services/network_service/network_service_interface.dart';
import 'package:flutter_test_task/data/model/item_model.dart';

class ItemApi implements IItemApi {
  ItemApi(
    INetworkService networkService,
  ) : _networkService = networkService;

  static const String _postPath = '/posts';

  final INetworkService _networkService;

  @override
  Future<NetworkResponse<List<Item>>> getItems() async =>
      await _networkService.request(
        const NetworkRequest(
          method: NetworkRequestType.get,
          path: _postPath,
        ),
        onParse: (response) {
          // Assuming the response.data is a List<dynamic>
          final List<dynamic> responseData = response.data;

          // Parse the List<dynamic> into a List<Item>
          final List<Item> items = responseData.map((itemData) {
            final Map<String, dynamic> data = itemData as Map<String, dynamic>;

            return Item(
              id: data['id'],
              title: data['title'],
              content: data['content'],
              imageUrl: data['image'],
              thumbnail: data['thumbnail'],
            );
          }).toList();

          return items;
        },
      );
}
