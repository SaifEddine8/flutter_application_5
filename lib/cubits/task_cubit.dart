import 'package:cubit_form/cubit_form.dart';
import 'package:flutter_application_5/cubits/state_task.dart';
import 'package:flutter_application_5/model/task.dart';

class TaskCubit extends Cubit<StateTask> {
  TaskCubit() : super(InitState());

  void add(Task task) {
    List<Task> newTasks = [...state.tasks, task];
    emit(UpdateState(newTasks));
  }

  void remove(int id) {
    List<Task> newTasks = state.tasks.where((task) => task.id != id).toList();
    emit(UpdateState(newTasks));
  }

  void toggle(int id) {
    List<Task> newTask = state.tasks.map((task) {
      return task.id == id ? task.copyWith(isComplete: !task.completed) : task;
    }).toList();
  }
}
