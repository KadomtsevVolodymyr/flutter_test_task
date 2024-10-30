import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/theme/theme_palette/default_palette.dart';
import 'package:flutter_test_task/extensions/num.dart';
import 'package:flutter_test_task/widgets/molecules/custom_button.dart';
import 'package:flutter_test_task/widgets/molecules/gradient_container.dart';

class CoinPackWidget extends StatelessWidget {
  const CoinPackWidget({
    super.key,
    required this.amount,
    required this.price,
    required this.imagePath,
  });
  final String amount;
  final String price;
  final Image imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        GradientContainer(
          child: SizedBox(
            width: 148.0.s,
            height: 172.0.s,
            child: Column(
              children: [
                Container(
                  width: 107.0.s,
                  height: 26.0.s,
                  margin: EdgeInsets.only(top: 10.0.s),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0.s, vertical: 2.0.s),
                  decoration: BoxDecoration(
                    color: DefaultPalette.blackTransparent,
                    border: Border.all(
                      color: DefaultPalette.blueBorder,
                      width: 0.5,
                    ),
                  ),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      amount,
                      style: Theme.of(context).textTheme.displayMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      imagePath,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -32.0.s,
          child: CustomButton.small(buttonText: price, onPress: () {}),
        ),
      ],
    );
  }
}
