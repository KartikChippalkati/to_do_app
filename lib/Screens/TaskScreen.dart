import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/Widgets/Tasks_List.dart';
import 'Add_Task_Screen.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/Task_data.dart';

class TasksScreens extends StatelessWidget {
  //const TasksScreens({Key? key}) : super(key: key);

  Widget bottomSheetWidget(BuildContext context) {
    //this function will compulsory takes the input of  BuildContext context and return the widget
    return AddTasksBottomSheet(
        /* callBackForTextWhenAddButtonIsPressed: (String taskText) {
      Provider.of<TasksTitle>(context).newTasks(taskText);
*/
        //print(taskText);
/*
      setState(() {
        Provider.of<TasksTitle>(context).tasks.add(Task(taskName: taskText));
        */ /*tasks.add(
          Task(taskName: taskText),*/ /*
      });*/

        );
    //color: Colors.lightBlueAccent,
    //height: 400.0,
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      //Whenever u want to add FloatingActionButton on the right side of the screen then you have to add it inside the Scaffold outside the body of Scaffold i.e just below the Scaffold

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //In the below, builder is a method or function which will return the Widget which is going to pop-up
          showModalBottomSheet(
              context: context,
              builder:
                  bottomSheetWidget); //builder : will take the function which will return the widget which is going to appear when bottomSheet button is pressed.Here bottomSheetWidget is a function
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(
            top: 60.0,
            left: 30.0,
            right: 30.0,
            bottom: 30.0,
          ),
          child: Column(
            //Always the column occupies the space on the screen as much as it's children needs
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                child: Icon(
                  Icons.list,
                  size: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),*/
              SizedBox(
                height: 10.0,
              ),
              Text(
                'ToDoList',
                style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Text(
                '${Provider.of<TasksTitle>(context).tasksCount} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          //Expanded widget will expanded it's child/children so that they can take up as much space as there exists
          child: Container(
            //Containers only operate or show up only when they have either children with dimension or we have mentioned the dimensions of the container
            //color: Colors.white,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
              color: Colors.white,
            ),
            child: TaskListView(),
          ),
        ),
      ]),
    );
  }
}
