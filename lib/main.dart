import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp_updates/models/task_data.dart';

import 'Screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>TaskData(),
      child:  const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
