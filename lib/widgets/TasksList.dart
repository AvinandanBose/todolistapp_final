import 'package:flutter/material.dart';
import 'package:todolistapp_updates/widgets/TasksTile.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp_updates/models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: Provider.of<TaskData>(context).tasks[index].name,
                isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
                checkboxCallback: (bool checkboxState) {
                 taskData.updateTask(task);
                },
              longPressCallback: (){
                  taskData.deleteTask(task);
              },
            );
          },
          itemCount:taskData.taskCount,
        );
      },
    );
  }
}
