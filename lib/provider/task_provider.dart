import 'package:flutter/material.dart';
import 'package:flutter_application_5/model/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> tasks = [];
  void add(Task task) {}
}
