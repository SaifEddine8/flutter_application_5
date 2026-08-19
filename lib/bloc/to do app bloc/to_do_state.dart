import 'package:flutter_application_5/model/task.dart';

abstract class ToDoState {
  final List<Task> tasks;
  ToDoState(this.tasks);
}

class InitState extends ToDoState {
  InitState() : super([]);
}

class UpdateState extends ToDoState {
  UpdateState(super.comp);
}
