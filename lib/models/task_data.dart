import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todolistapp_updates/models/task.dart';

class TaskData extends ChangeNotifier{
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy breads'),
  ];

  // List<Task> get tasks {
  //   return _tasks;
  // }

  UnmodifiableListView <Task> get tasks{
    return  UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}