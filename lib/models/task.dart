//This class is required for adding the tasks to the task screen when we press the Add button
//And also for the operation of the task screen

class Task {
  final String taskName;
  bool isTaskDone;

  Task({required this.taskName, this.isTaskDone = false});

  void toggleTaskDone() {
    isTaskDone =
        !isTaskDone; // isTaskDone = !isTaskDone; this operation will just opposite or reverse the value of the bool isTaskDone
  }
}
