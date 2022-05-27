import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp_updates/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  const AddTaskScreen ({Key? key, required this.addTaskCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle='';
    return Container(
      color:const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Center(
              child:  Text(
                  'Add Text',
                style: TextStyle(
                  fontSize: 30.0,
                  color:Colors.lightBlueAccent
                ),
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTaskTitle = newValue;

              },
            ),
            FlatButton(
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);

              },
              color: Colors.lightBlueAccent,
              child: const Text('Add'),

            ),
          ],
        ),
      ),
    );
  }
}
