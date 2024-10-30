import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/theme/theme_palette/default_palette.dart';
import 'package:flutter_test_task/extensions/num.dart';
import 'package:flutter_test_task/generated/assets/assets.gen.dart';

enum TextSize { small, large }

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPress,
    this.isActive = true,
    required this.buttonSize,
    required this.textSize,
  });

  /// Named constructor for large button
  CustomButton.large({
    Key? key,
    required String buttonText,
    required VoidCallback onPress,
    bool isActive = true,
  }) : this(
          key: key,
          buttonText: buttonText,
          onPress: onPress,
          buttonSize: Size(213.0.s, 67.0.s),
          isActive: isActive,
          textSize: TextSize.large,
        );

  CustomButton.small({
    Key? key,
    required String buttonText,
    required VoidCallback onPress,
    bool isActive = true,
  }) : this(
          key: key,
          buttonText: buttonText,
          onPress: onPress,
          buttonSize: Size(139.0.s, 44.0.s),
          isActive: isActive,
          textSize: TextSize.small,
        );

  final String buttonText;
  final VoidCallback onPress;
  final bool isActive;
  final Size buttonSize;
  final TextSize textSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildButtonBackground(),
          _buildButtonText(context),
        ],
      ),
    );
  }

  Widget _buildButtonBackground() {
    return Assets.buttons.bigButton
        .image(width: buttonSize.width, height: buttonSize.height);
  }

  Widget _buildButtonText(BuildContext context) {
    return Text(
      buttonText.toUpperCase(),
      style: _getTextStyle(context),
    );
  }

  TextStyle? _getTextStyle(BuildContext context) {
    final baseStyle = isActive ? DefaultPalette.white : DefaultPalette.grey;

    return textSize == TextSize.large
        ? Theme.of(context).textTheme.displayLarge?.copyWith(color: baseStyle)
        : Theme.of(context).textTheme.displaySmall?.copyWith(color: baseStyle);
  }
}
