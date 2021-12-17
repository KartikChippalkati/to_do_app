import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TasksTitle extends ChangeNotifier {
  //To make our app safer we will make the tasks List as private;So no one can add or delete the tasks
  //But we will create the Unmodifiable getter List which will have the access to this private tasks List
  //I am doing all this mainly because to minimize my error.i.e whenever if we want to add new tasks to the list , then we may simply write as tasks.add() ,But this will not work as the app will not reload.So to prevet this and make us remember that we have to create the method in the changeNotifier to take up the tasks and also write the notifyListners() keyword to reload

  List<Task> _tasks = [];

  void addNewTasks(String newTaskTitle) {
    final task = Task(taskName: newTaskTitle);
    _tasks.add(task);
    //tasks.add(Task(taskName: newTaskTitle));
    notifyListeners(); //This is most most most important,this will reload the app when any changes occur in the app.This will works as a setState
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return _tasks.length;
  }

  //This below method is perfect;
  //This below method takes the whole "Task" data as input (i.e both task title and bool isDone based upon the index) and as we mentioned the toggleDone() method for that particular index task, it will take that bool value and that toggleDone() will opposite that and give back to that Tasks_List CheckBoxState and the process continues
  void updateTaskCheckBox(Task taskies) {
    taskies.toggleTaskDone();
    notifyListeners();
  }

  void deleteTask(Task deleteTaskTotally) {
    _tasks.remove(deleteTaskTotally);
    notifyListeners();
  }
}
