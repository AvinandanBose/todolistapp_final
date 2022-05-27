import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool? isChecked ;
   final String? taskTitle;
   final Function checkboxCallback;
  final Function longPressCallback;
   const TaskTile({Key? key,  this.isChecked , this.taskTitle, required this.checkboxCallback, required this.longPressCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        longPressCallback();
      } ,
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newValue){
            checkboxCallback(newValue);
          },
    ),
    );
  }
}


