import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/widgets/tokens/spacing.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    required this.item,
    required this.onTap,
    super.key,
  });

  final Item item;
  final VoidCallback onTap;

  static const cardMargin = EdgeInsets.symmetric(
    vertical: Spacing.eightPX,
    horizontal: Spacing.sixteenPX,
  );
  static const contentPadding = EdgeInsets.all(Spacing.twelvePX);
  static const cardElevation = 2.0;
  static const avatarRadius = 25.0;
  static const maxLines = 2;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      margin: cardMargin,
      child: ListTile(
        contentPadding: contentPadding,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(item.thumbnail),
          radius: avatarRadius,
        ),
        title: Text(
          item.title,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        subtitle: Text(
          item.content,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: onTap,
      ),
    );
  }
}
