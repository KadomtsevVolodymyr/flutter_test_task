import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/theme/theme_palette/default_palette.dart';
import 'package:flutter_test_task/data/model/task_model.dart';
import 'package:flutter_test_task/extensions/num.dart';
import 'package:flutter_test_task/generated/assets/assets.gen.dart';

class TaskBoardWidget extends StatelessWidget {
  const TaskBoardWidget({
    super.key,
    required this.tasks,
    required this.onTaskCompleted,
  });
  final List<Task> tasks;
  final Function(int) onTaskCompleted;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Assets.images.taskTable.image(width: 353.0.s, height: 475.0.s),
        SizedBox(
          width: 280.0.s,
          height: 270.0.s,
          child: Column(
            children: List.generate(tasks.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTaskNumber(index + 1, context),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Flexible(
                      child: Text(
                        tasks[index].title,
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget _buildTaskNumber(int taskNumber, BuildContext context) {
    return Container(
      width: 35.0,
      height: 33.0,
      decoration: BoxDecoration(
        color: const Color(0xFFB78A66).withOpacity(0.4),
        border: Border.all(
          color: DefaultPalette.white.withOpacity(0.6),
          width: 0.2, // Border width
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      alignment: Alignment.center,
      child: Text(
        taskNumber.toString(),
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
