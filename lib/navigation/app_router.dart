import 'package:auto_route/auto_route.dart';
import 'package:flutter_test_task/presentation/menu_screen/menu_screen.dart';
import 'package:flutter_test_task/presentation/store_screen/store_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: MenuRoute.page,
          path: MenuScreen.path,
          initial: true,
        ),
        AutoRoute(
          page: StoreRoute.page,
          path: StoreScreen.path,
        ),
      ];
}
