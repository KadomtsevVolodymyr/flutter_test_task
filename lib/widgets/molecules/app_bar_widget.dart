import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/generated/l10n.dart';
import 'package:flutter_test_task/widgets/organisms/item_search_delegate.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.originalItems});

  final List<Item> originalItems;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        S.of(context).itemList,
        style: Theme.of(context).textTheme.displayLarge,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            // Show the search bar using ItemSearchDelegate
            await showSearch(
              context: context,
              delegate: ItemSearchDelegate(originalItems),
            );
          },
        ),
      ],
    );
  }
}
