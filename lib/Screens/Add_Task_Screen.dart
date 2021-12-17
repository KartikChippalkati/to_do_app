import 'package:flutter/material.dart';
import 'package:todoey_flutter/Widgets/Tasks_List.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/Task_data.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTasksBottomSheet extends StatelessWidget {
  //const AddTasksBottomSheet({Key? key}) : super(key: key);
  /*final Function callBackForTextWhenAddButtonIsPressed;
  AddTasksBottomSheet({required this.callBackForTextWhenAddButtonIsPressed});*/

  @override
  Widget build(BuildContext context) {
    //In stateless widget you have to declare the variable here  //The variable which does not have the value initially
    String? newTaskTitle; // String newTaskTitle;  This will give u a error
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Add Tasks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lora',
                  fontSize: 30.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.0, right: 35.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Add Your Task Here'),
                autofocus:
                    true, // This will make u visible the keyboard, i.e when u tap on the button or anywhere which will take u to the screen which will have a TextField(), then it will automatically pop-up the keyboard to type to the user
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.0, right: 35.0),
              child: FlatButton(
                //for nay buttons untill the omPressed button is provided the button will not work
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TasksTitle>(context, listen: false)
                      .addNewTasks(newTaskTitle!);
                  Navigator.pop(context);
                  //callBackForTextWhenAddButtonIsPressed(newTaskTitle);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//This below code will work but not to correct extent.
//It will not give us a required UI
/*


//if we had not put the container inside the another Container like above,then that round edges will not be possible
   return Container(

     decoration: BoxDecoration(
       borderRadius: BorderRadius.only(
         topRight: Radius.circular(10.0),
         topLeft: Radius.circular(10.0),
       ),


     ),
     child: Padding(
       padding: EdgeInsets.symmetric(horizontal: 40.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Center(
             child: Text(
               'Add Tasks',
               style: TextStyle(
                 color: Colors.lightBlueAccent,
                 fontWeight: FontWeight.w400,
                 fontSize: 30.0,
               ),
             ),
           ),
           TextField(textAlign: TextAlign.center),
           FlatButton(
             color: Colors.lightBlueAccent,
             onPressed: () {},
             child: Text('Add'),
           ),
         ],
       ),
     ),
   );
  }
}
*/
