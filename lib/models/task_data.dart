import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Walk the dog", isDone: false),
    Task(name: "Buy food", isDone: false),
    Task(name: "Read new book", isDone: true),
    Task(name: "Head to schools", isDone: false),
    Task(name: "Head to school", isDone: true),
    Task(name: "Gym", isDone: false),
  ];

  int getTasksCount() {
    return _tasks.length;
  }

  void addNewTask(String title) {
    _tasks.add(Task(name: title));
    notifyListeners();
  }

  List<Task> get tasks {
    return _tasks;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
