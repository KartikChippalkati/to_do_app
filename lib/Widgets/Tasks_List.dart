import 'package:flutter/material.dart';
import 'Tasks_Tile.dart';

import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/Task_data.dart';

class TaskListView extends StatelessWidget {
//We have created this list to add the tasks and also to take the checkBox values

// List<Task> tasks = [];  Here the <Task> is not a data type of that list , but it is the name of that Task class

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksTitle>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskListTile(
                taskName: taskData.tasks[index].taskName,
                isChecked: taskData.tasks[index].isTaskDone,
                checkBoxCallBack: (bool checkBoxState) {
                  taskData.updateTaskCheckBox(
                    taskData.tasks[index],
                  );

                  /*  setState(() {
                Provider.of<TasksTitle>(context).tasks[index].toggleTaskDone();
                //tasks[index].isTaskDone = checkBoxState;
              });*/
                },
                longPressCallBack: () {
                  taskData.deleteTask(taskData.tasks[index]);
                });
          },
          itemCount: taskData.tasksCount,
        );
      },
      // it will show error if we did not specify the length of the tasks List
    );
  }
}

/*(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      children: [
        TaskListTile(
          taskName: tasks[0].taskName,
          isChecked: tasks[0].isTaskDone,
        ),
        TaskListTile(
          taskName: tasks[1].taskName,
          isChecked: tasks[1].isTaskDone,
        ),
        TaskListTile(
          taskName: tasks[1].taskName,
          isChecked: tasks[1].isTaskDone,
        ),
        TaskListTile(
          taskName: tasks[0].taskName,
          isChecked: tasks[0].isTaskDone,
        ),
      ],
    );*/

//If we use ListView then we have to add the children of the ListView manually i.e to add the TaskListTile every time if we added  the task to the list manually

//So if we want to add the large number of children to the ListView then we convert that ListView to ListViewBuilder so that we can add large number of children and also we can read the data of the Whole List automatically
//ListViewBuilder is really useful when we need to build the large number of children inside the ListView

//The information where the widget lives is in that build context property

//ListViewBuilder requires the one callBack method which will return the  widget which we want to show.And that callBack method takes the two inputs => (context,index)

/*


ListView.builder(
itemBuilder: (context, index) {
child:
TaskListTile(
taskName: Provider
    .of<TasksTitle>(context)
    .tasks[index].taskName,
isChecked: Provider
    .of<TasksTitle>(context)
    .tasks[index].isTaskDone,
checkBoxCallBack: (bool checkBoxState) {
*/
/*  setState(() {
                Provider.of<TasksTitle>(context).tasks[index].toggleTaskDone();
                //tasks[index].isTaskDone = checkBoxState;
              });*/ /*

},
);
},
itemCount: Provider
    .of<TasksTitle>(context)
.tasks
    .length;
);*/
