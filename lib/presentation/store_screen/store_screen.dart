import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/domain/repositories/coin_repository_interface.dart';
import 'package:flutter_test_task/presentation/store_screen/cubit/store_cubit.dart';
import 'package:flutter_test_task/presentation/store_screen/store_layout.dart';
import 'package:provider/provider.dart';

@RoutePage()
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  static const path = '/store_screen';

  @override
  Widget build(BuildContext context) {
    final coinRep = Provider.of<ICoinRepository>(context);
    return BlocProvider<StoreCubit>(
      create: (context) => StoreCubit(coinRep),
      child: const StoreLayout(),
    );
  }
}
