import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/model/task_model.dart';
import 'package:flutter_test_task/extensions/num.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.task,
    required this.onCompleted,
  });
  final Task task;
  final VoidCallback onCompleted;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0.s, horizontal: 16.0.s),
        margin: EdgeInsets.symmetric(vertical: 8.0.s),
        child: Row(
          children: [
            Text(
              task.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
