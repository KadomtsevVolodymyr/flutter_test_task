class Task {
  Task(
      {required this.title,
      this.currentProgress = 0,
      required this.goal,
      required this.unit});
  final String title;
  int currentProgress;
  final int goal;
  final String unit;

  bool isCompleted() {
    return currentProgress >= goal;
  }

  void incrementProgress(int value) {
    currentProgress += value;
  }

  String getGoalText() {
    if (title.contains("Total Matches")) {
      return "Total Matches: $currentProgress";
    } else {
      return "$currentProgress/$goal $unit";
    }
  }
}
