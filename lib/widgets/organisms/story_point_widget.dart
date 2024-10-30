// widgets/story_point_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/theme/theme_palette/default_palette.dart';
import 'package:flutter_test_task/data/model/story_point_model.dart';
import 'package:flutter_test_task/extensions/build_context.dart';
import 'package:flutter_test_task/extensions/num.dart';
import 'package:flutter_test_task/generated/assets/assets.gen.dart';
import 'package:flutter_test_task/widgets/molecules/gradient_container.dart';

class StoryPointWidget extends StatelessWidget {
  const StoryPointWidget({
    super.key,
    required this.storyPoint,
    required this.onNext,
  });
  final StoryPoint storyPoint;
  final Function(int index) onNext;

  static final spacing20 = SizedBox(
    height: 20.0.s,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: storyPoint.isTaskPoint
            ? MainAxisAlignment.end
            : MainAxisAlignment.spaceBetween,
        children: [
          if (storyPoint.text != null)
            SizedBox(
              width: 345.0.s,
              height: 172.0.s,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Assets.background.textBackground
                      .svg(width: 345.0.s, height: 172.0.s),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0.s,
                      left: 28.0.s,
                      right: 28.0.s,
                      bottom: 20.0.s,
                    ),
                    child: Text(
                      storyPoint.text!,
                      style: context.theme.textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0.s),
            child: Row(
              children: [
                Expanded(
                  child: GradientContainer(
                    child: SizedBox(
                      height: 145.0.s,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          if (storyPoint.questions != null &&
                              storyPoint.questions!.isNotEmpty)
                            ...storyPoint.questions!.map((question) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: 20.0.s,
                                  right: 20.0.s,
                                ),
                                child: GestureDetector(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: DefaultPalette.white,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      question.questionText,
                                      style:
                                          context.theme.textTheme.displayMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  onTap: () =>
                                      onNext(question.correctOptionIndex),
                                ),
                              );
                            }).toList(),
                        ],
                      ),
                    ),
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
