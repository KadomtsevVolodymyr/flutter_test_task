import 'package:flutter/material.dart';
import 'package:flutter_test_task/extensions/num.dart';

class Reel extends StatelessWidget {
  const Reel(
      {super.key, required this.animation, required this.getSymbolAtPosition});

  final Animation<double> animation;
  final String Function(double position) getSymbolAtPosition;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Center(
          child: Image.asset(
            width: 100.0.s,
            height: 100.0.s,
            getSymbolAtPosition(animation.value),
          ),
        );
      },
    );
  }
}
