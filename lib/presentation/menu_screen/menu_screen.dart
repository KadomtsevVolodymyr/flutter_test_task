import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/presentation/menu_screen/menu_layout.dart';

@RoutePage()
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  static const path = '/menu_screen';

  @override
  Widget build(BuildContext context) {
    return const MenuLayout();
  }
}
