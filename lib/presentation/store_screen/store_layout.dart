import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/extensions/num.dart';
import 'package:flutter_test_task/generated/assets/assets.gen.dart';
import 'package:flutter_test_task/presentation/store_screen/cubit/store_cubit.dart';
import 'package:flutter_test_task/widgets/organisms/background_image_scaffold.dart';
import 'package:flutter_test_task/widgets/organisms/coin_pack_widget.dart';

class StoreLayout extends StatefulWidget {
  const StoreLayout({super.key});

  @override
  State<StoreLayout> createState() => _StoreLayoutState();
}

class _StoreLayoutState extends State<StoreLayout> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageScaffold(
      image: Assets.background.inialScreen.image(fit: BoxFit.cover),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 75.0.s,
              crossAxisCount: 2,
              children: [
                GestureDetector(
                  child: CoinPackWidget(
                    amount: '100.000',
                    price: '0.99 USD',
                    imagePath: Assets.coins.coinPack100000.image(),
                  ),
                  onTap: () => context.read<StoreCubit>().buyCoins(100000),
                ),
                CoinPackWidget(
                  amount: '700.000',
                  price: '1.99 USD',
                  imagePath: Assets.coins.coinPack700000.image(),
                ),
                CoinPackWidget(
                  amount: '5.000.000',
                  price: '3.99 USD',
                  imagePath: Assets.coins.coinPack5000000.image(),
                ),
                CoinPackWidget(
                  amount: '100.000.000',
                  price: '8.99 USD',
                  imagePath: Assets.coins.coinPack100000000.image(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
