import 'package:flutter_application_5/model/task.dart';

abstract class ToDoEvent {}

class AddTaskEvent extends ToDoEvent{
  final Task task;
  AddTaskEvent(this.task);
}


class RemoveTaskEvent extends ToDoEvent{
  final int id;
  RemoveTaskEvent(this.id);
}



class UpdateStatusEvent extends ToDoEvent{
final int id;
UpdateStatusEvent(this.id);
}