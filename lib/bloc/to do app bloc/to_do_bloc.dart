
import 'package:bloc/bloc.dart';
import 'package:flutter_application_5/bloc/to%20do%20app%20bloc/to_do_event.dart';
import 'package:flutter_application_5/bloc/to%20do%20app%20bloc/to_do_state.dart';
import 'package:flutter_application_5/model/task.dart';

class ToDoBloc extends Bloc<ToDoEvent,ToDoState>{

ToDoBloc():super(InitState())
{
  on<AddTaskEvent>(((event, emit) => emit(UpdateState([... state.tasks,event.task]))));

    on<RemoveTaskEvent>(((event, emit) {

      List<Task> newTasks = state.tasks.where((task) => task.id != event.id).toList();
      emit(UpdateState(newTasks));
    }));

  on<UpdateStatusEvent>(((event, emit) {

      List<Task> newTask = state.tasks.map((task) {
      return task.id == event.id ? task.copyWith(isComplete: !task.completed) : task;
    }).toList();
    emit(UpdateState(newTask));
    }));
}





}