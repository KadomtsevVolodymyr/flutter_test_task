import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/presentation/detail_screen/detail_layout.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.item});

  final Item item;

  static const path = '/detail_screen';

  @override
  Widget build(BuildContext context) {
    return DetailLayout(item: item);
  }
}
