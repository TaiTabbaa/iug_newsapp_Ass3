import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/todo_app/provider/todo_provider.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  Function fun;
  Function delete;
  CompleteTasksScreen(this.fun, this.delete);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasksList.where((element) => element.isCompleted).toList()[index],
              fun,
              delete);
        });
  }
}
