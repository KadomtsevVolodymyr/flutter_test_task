import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/extensions/num.dart';
import 'package:flutter_test_task/generated/assets/assets.gen.dart';
import 'package:flutter_test_task/navigation/app_router.dart';
import 'package:flutter_test_task/widgets/molecules/custom_button.dart';
import 'package:flutter_test_task/widgets/organisms/background_image_scaffold.dart';

class MenuLayout extends StatefulWidget {
  const MenuLayout({super.key});

  @override
  State<MenuLayout> createState() => _MenuLayoutState();
}

class _MenuLayoutState extends State<MenuLayout> {
  static final spacing20 = SizedBox(
    height: 20.0.s,
  );
  static final spacing167 = SizedBox(
    height: 167.0.s,
  );
  @override
  Widget build(BuildContext context) {
    return BackgroundImageScaffold(
      isHomePage: true,
      image: Assets.background.inialScreen.image(fit: BoxFit.cover),
      body: Column(
        children: [
          spacing167,
          CustomButton.large(
            buttonText: 'New game',
            onPress: () => context.router.push(const StoryRoute()),
          ),
          spacing20,
          CustomButton.large(
            buttonText: 'Continue',
            onPress: () {},
            isActive: false,
          ),
          spacing20,
          CustomButton.large(
            buttonText: 'Store',
            onPress: () => context.router.push(const StoreRoute()),
          ),
        ],
      ),
    );
  }
}
