import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/model/question_model.dart';

class StoryPoint {
  StoryPoint({
    this.text,
    this.imageUrl,
    this.questions,
    this.isEnd = false,
    this.isTaskPoint = false,
  });

  final bool isTaskPoint;
  final bool isEnd;
  final String? text;
  final Image? imageUrl;
  final List<Question>? questions;
}
