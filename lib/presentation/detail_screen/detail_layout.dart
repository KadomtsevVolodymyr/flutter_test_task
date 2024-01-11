import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/model/item_model.dart';
import 'package:flutter_test_task/generated/l10n.dart';
import 'package:flutter_test_task/widgets/tokens/spacing.dart';

class DetailLayout extends StatelessWidget {
  const DetailLayout({super.key, required this.item});

  final Item item;

  static const paddingAll16 = EdgeInsets.all(Spacing.sixteenPX);
  static const spacing16 = SizedBox(height: Spacing.sixteenPX);
  static const spacing8 = SizedBox(height: Spacing.eightPX);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).itemDetail,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingAll16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(item.imageUrl),
              spacing16,
              Text(
                item.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              spacing8,
              Text(item.content),
            ],
          ),
        ),
      ),
    );
  }
}
