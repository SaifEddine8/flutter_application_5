import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/bloc/to%20do%20app%20bloc/to_do_bloc.dart';
import 'package:flutter_application_5/bloc/to%20do%20app%20bloc/to_do_event.dart';
import 'package:flutter_application_5/bloc/to%20do%20app%20bloc/to_do_state.dart';
import 'package:flutter_application_5/cubits/state_task.dart';
import 'package:flutter_application_5/cubits/task_cubit.dart';
import 'package:flutter_application_5/model/task.dart';
import 'package:flutter_application_5/widget/task_card.dart';
import 'package:http/http.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
    
              actions: [
                Column(
                  spacing: 20,
                  children: [
                    Text('ADD TASK'),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(hintText: 'task name'),
                    ),
                    Row(
                      mainAxisAlignment: .spaceAround,
                      children: [
                        InkWell(
                          onTap: () => context.read<ToDoBloc>().add(AddTaskEvent(Task(name: nameController.text))),
                          child: Text('add'),
                        ),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Text('cancel'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: BlocBuilder<ToDoBloc, ToDoState>(
          builder: (context, state) => SizedBox(
            width: .infinity,
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.tasks.length,
                    itemBuilder: (context, index) => TaskCard(
                      task: state.tasks[index],
                      completed: state.tasks[index].completed,
                      onChange: (value) => context.read<ToDoBloc>().add(UpdateStatusEvent(state.tasks[index].id))
                      // toggle(
                      //   state.tasks[index].id,
                      // ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
