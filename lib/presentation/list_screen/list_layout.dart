import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/navigation/app_router.dart';
import 'package:flutter_test_task/presentation/list_screen/list_cubit/list_cubit.dart';
import 'package:flutter_test_task/widgets/molecules/app_bar_widget.dart';
import 'package:flutter_test_task/widgets/molecules/item_title.dart';

class ListLayout extends StatefulWidget {
  const ListLayout({super.key});

  @override
  State<ListLayout> createState() => _ListLayoutState();
}

class _ListLayoutState extends State<ListLayout> {
  List<Item> originalItems = [];

  @override
  void initState() {
    super.initState();
    // Trigger the loading of items when the screen initializes
    context.read<ListCubit>().loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        originalItems: originalItems,
      ),
      body: BlocConsumer<ListCubit, ListScreenState>(
        listener: (context, state) {
          // Store the original items for search functionality
          setState(() {
            originalItems = state.maybeWhen(
              loaded: (List<Item>? items) => items ?? [],
              orElse: () => [],
            );
          });
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (List<Item>? items) {
              return RefreshIndicator(
                onRefresh: () async =>
                    await context.read<ListCubit>().loadItems(),
                child: ListView.builder(
                  itemCount: originalItems.length,
                  itemBuilder: (context, index) {
                    return ItemTile(
                      item: originalItems[index],
                      onTap: () => context.router
                          .push(DetailRoute(item: originalItems[index])),
                    );
                  },
                ),
              );
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            error: (error) {
              return Center(
                child: Text(error.toString()),
              );
            },
            initial: () {
              return const Center(child: CircularProgressIndicator());
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
