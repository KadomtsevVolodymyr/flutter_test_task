import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/controllers/music_controller.dart';
import 'package:flutter_test_task/data/datasource/local/shared_storage.dart';
import 'package:flutter_test_task/extensions/num.dart';
import 'package:flutter_test_task/generated/assets/assets.gen.dart';
import 'package:flutter_test_task/navigation/app_router.dart';
import 'package:flutter_test_task/widgets/molecules/gradient_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CoinsWidget extends StatefulWidget {
  const CoinsWidget({super.key, required this.isHomeScreen});

  final bool isHomeScreen;

  @override
  CoinsWidgetState createState() => CoinsWidgetState();
}

class CoinsWidgetState extends State<CoinsWidget> {
  final MusicController _musicController = MusicController();
  final ValueNotifier<double> _coinNotifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    _loadCoins();
    _musicController.loadAndCacheMusic();
  }

  // Load coins from SharedPreferences and set it to the notifier
  Future<void> _loadCoins() async {
    final prefs = await SharedPreferences.getInstance();
    double initialCoins = prefs.getDouble('coinBalance') ?? 0;
    _coinNotifier.value = initialCoins;
  }

  // Update coins and persist the value to SharedPreferences
  Future<void> _updateCoins(double newBalance) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(
        'coinBalance', newBalance); // Persist to local storage
    _coinNotifier.value = newBalance; // Update ValueNotifier
  }

  // Example of how you can increment coins (like a reward)
  void _incrementCoins(double amount) {
    _updateCoins(_coinNotifier.value + amount);
  }

  @override
  void dispose() {
    _coinNotifier.dispose(); // Dispose notifier to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        !widget.isHomeScreen
            ? GestureDetector(
                onTap: () {
                  context.router.replaceAll([const MenuRoute()]);
                },
                child: Assets.buttons.homeButton.image(),
              )
            : ValueListenableBuilder<bool>(
                valueListenable: _musicController,
                builder: (context, isPlaying, child) {
                  return IconButton(
                    icon: isPlaying
                        ? Assets.buttons.mussicOnButton.image()
                        : Assets.buttons.musicOffButton.image(),
                    onPressed: _musicController.toggleMusic,
                  );
                },
              ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.centerLeft,
          children: [
            GradientContainer(
              child: SizedBox(
                width: 137.0.s,
                height: 30.0.s,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 23.0.s, right: 2.0.s),
                        child: ValueListenableBuilder<double>(
                          valueListenable: SharedStorage.coinBalanceNotifier,
                          builder: (context, coins, _) {
                            return Text(
                              '$coins',
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -25.0.s,
              child: Assets.coins.oneCoin.svg(width: 44.0.s, height: 44.0.s),
            ),
          ],
        ),
      ],
    );
  }
}
