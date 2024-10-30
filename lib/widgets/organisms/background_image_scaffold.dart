import 'package:flutter/material.dart';
import 'package:flutter_test_task/extensions/num.dart';
import 'package:flutter_test_task/widgets/organisms/screen_side_offset.dart';
import 'package:flutter_test_task/widgets/organisms/user_coins.dart';

class BackgroundImageScaffold extends StatelessWidget {
  const BackgroundImageScaffold({
    super.key,
    required this.image,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.fit = BoxFit.cover,
    this.isHomePage = false,
  });
  final Image image;
  final Widget body;
  final Widget? appBar;
  final Widget? bottomNavigationBar;
  final BoxFit fit;
  final bool isHomePage;

  static final spacingTop = SizedBox(
    height: 74.0.s,
  );
  static final spacingTop2 = SizedBox(
    height: 112.0.s,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar == null
          ? null
          : PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: appBar!,
            ),
      bottomNavigationBar: bottomNavigationBar,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: image,
          ),
          // Body content
          Positioned.fill(
              child: Column(
            children: [
              spacingTop2,
              Expanded(child: body),
            ],
          )),
          Positioned.fill(
            child: Column(
              children: [
                spacingTop,
                ScreenSideOffset.large(
                  child: CoinsWidget(
                    isHomeScreen: isHomePage,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
