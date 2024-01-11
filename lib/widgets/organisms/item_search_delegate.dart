import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/navigation/app_router.dart';
import 'package:flutter_test_task/widgets/molecules/item_title.dart';

/// A SearchDelegate implementation for searching and displaying items.
class ItemSearchDelegate extends SearchDelegate<String> {
  ItemSearchDelegate(this.items);

  final List<Item> items;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        // Clear query action button
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      // Back button to close the search
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Filter items based on the search query
    final List<Item> displayedItems = items
        .where((item) => item.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: displayedItems.length,
      itemBuilder: (context, index) {
        // Display filtered items
        return ItemTile(
          item: displayedItems[index],
          onTap: () =>
              context.router.push(DetailRoute(item: displayedItems[index])),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Filter items based on the search query for suggestions
    final List<Item> displayedItems = items
        .where((item) => item.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: displayedItems.length,
      itemBuilder: (context, index) {
        // Display item titles as suggestions
        return ListTile(
          title: Text(displayedItems[index].title),
          onTap: () {
            query = displayedItems[index].title;
            showResults(context);
          },
        );
      },
    );
  }
}
