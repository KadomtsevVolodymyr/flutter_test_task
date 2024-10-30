import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/theme/theme_palette/default_palette.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            DefaultPalette.primaryBackgroundColor,
            DefaultPalette.secondaryBackgroundColor
          ],
        ),
        border: const GradientBoxBorder(
          gradient: RadialGradient(
            center: Alignment(0.5, 0.5),
            radius: 4,
            colors: [
              DefaultPalette.borderColorStart,
              DefaultPalette.borderColorEnd,
            ],
            stops: [0.0, 1.0],
          ),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
