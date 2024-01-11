import 'package:auto_route/auto_route.dart';
import 'package:flutter_test_task/presentation/detail_screen/detail_screen.dart';
import 'package:flutter_test_task/presentation/list_screen/list_screen.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: DetailRoute.page,
          path: DetailScreen.path,
        ),
        AutoRoute(
          page: ListRoute.page,
          path: ListScreen.path,
          initial: true,
        ),
      ];
}
