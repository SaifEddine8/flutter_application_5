import 'package:flutter_application_5/model/task.dart';

abstract class StateTask {
  final List<Task> tasks;
  StateTask(this.tasks);
}

class InitState extends StateTask {
  InitState() : super([]);
}

class UpdateState extends StateTask {
  UpdateState(super.comp);
}
