import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/bloc/to%20do%20app%20bloc/to_do_bloc.dart';
import 'package:flutter_application_5/bloc/to%20do%20app%20bloc/to_do_event.dart';
import 'package:flutter_application_5/cubits/task_cubit.dart';
import 'package:flutter_application_5/model/task.dart';

class TaskCard extends StatelessWidget {
  Task task;
  bool completed;
  ValueChanged<bool?> onChange;
  TaskCard({
    super.key,
    required this.task,
    required this.completed,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 10,
          color: Colors.blue[50],
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(task.name),
              Checkbox(value: completed, onChanged: onChange),
            ],
          ),
        ),
        InkWell(
          onTap: () => context.read<ToDoBloc>().add(RemoveTaskEvent(task.id)),
          child: Icon(Icons.delete),
        ),
      ],
    );
  }
}
