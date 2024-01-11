import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/domain/repositories/item_repository_interface.dart';
import 'package:flutter_test_task/presentation/list_screen/list_cubit/list_cubit.dart';
import 'package:flutter_test_task/presentation/list_screen/list_layout.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  static const path = '/list_screen';

  @override
  Widget build(BuildContext context) {
    final iItemRepository = Provider.of<IItemRepository>(context);
    return BlocProvider.value(
      value: ListCubit(iItemRepository: iItemRepository),
      child: const ListLayout(),
    );
  }
}
