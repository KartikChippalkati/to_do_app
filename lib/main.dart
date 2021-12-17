import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Screens/TaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/Task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          TasksTitle(), // builder: (context) => TasksTitle(),   this is not used now .It will throw an error
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //By default all our material app widget will get the blue color
        home: TasksScreens(),
      ),
    );
  }
}
