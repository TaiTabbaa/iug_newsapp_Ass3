import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/todo_app/models/task_model.dart';
import 'package:state_managment/todo_app/provider/todo_provider.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function delete;
  Task task;

  TaskWidget(this.task, this.fun, this.delete);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        secondary: IconButton(
            onPressed: () {
              delete(task);
              // int index = tasksList.indexOf(task);
              //  tasksList.removeAt(index);
            },
            icon: Icon(
              Icons.clear,
              color: Colors.red,
            )),
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
      ),
    );
  }
}
