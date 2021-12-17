import 'package:flutter/material.dart';

//*******  setState((){  });  can only be used in the Stateful widget and it cannot be used in the Stateless widget
//Always for "onPressed" method there will be no concept of value and other stuff, it will only have what will be happened after that button is pressed
// Always for "onChanged" method we have a important concept called value .once that button is pressed for which onChanged is set, we will store that value in the variable balue

class TaskListTile extends StatelessWidget {
  /* bool Fun(var check) {
    return check;
   // print(isChecked);
    //Line(isChecked);
  }
*/

  final bool isChecked;
  final String taskName;
  final Function checkBoxCallBack;
  final void Function()
      longPressCallBack; //This will not work  if  => final  Function longPressCallBack;
  TaskListTile(
      {required this.taskName,
      required this.isChecked,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  //callback method
  /*  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(
        () {
          isChecked = checkBoxState;
        },
      );
    }
  }
*/
  //This callBack will not work now .The above callBack will work
  /* void checkBoxCallback(bool currentCheckBoxState) {
    setState(() {
      isChecked = currentCheckBoxState;
      print(isChecked);
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:
          longPressCallBack, //This longPressCallBack is just a void callBack, it will just access the function which is present in the Tasks_List and that function will perform the operation ,that's all.This       onLongPress: longPressCallBack,   //This longPressCallBack is just a void callBack, it will just access the function which is present in the Tasks_List and that function will perform the operation ,that's all.This       onLongPress: longPressCallBack,   //This longPressCallBack is just a void callBack, it will just access the function which is present in the Tasks_List and that function will perform the operation ,that's all.This longPressCallBack just tells us that the task is longPressed.Literally it is not a callBack method,it is a method which just pass that the button is long pressed and initialize the operation of function which is assigned to it.Whereas the below checkBoxCallBack method will pass the data(i.e newValue) to the Tasks_List where that data is used

      //leading: Icon(Icons.add),
      title: Text(
        taskName,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallBack(newValue);
        },
        /* toggleCheckboxStateCallback as void Function(bool?)?,*/
      ),
    );
  }
}
/*

class TaskCheckbox extends StatelessWidget {
  //const TaskCheckbox({Key? key}) : super(key: key);

  final bool checkBoxState;
  final toggleCheckboxStateCallback;
  TaskCheckbox(
      {required this.checkBoxState, required this.toggleCheckboxStateCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckboxStateCallback as void Function(bool?)?,

      */
/*(newValue){
          setState(() {
         king  =  newValue;
         return king;
          });*/ /*


      */
/*(newValue) {
          setState(() {
            checked = newValue!;
            obj.Fun(checked);
          });*/ /*

    );
  }
}
*/

//There are two types of States
// Local State and Global State
//In Local State the value of the variables can be used only in that State and can't be used outside that state
//In Global State the value of the variables can be used all over the project,i.e outside tha state also we can use that value of that variable

// In the above TaskCheckbox teh value of checkBoxState can be used only in that state only

//So we have to create the "callBack" method to in the state where u want to use, use the  value of that variable in that state
//In stateless widget all the variables should be final;
//In stateful widget all the variables are changing because they will be changing and no variable should be final

//*** for onChanged and onTap property , if we want to use that value outside that state,  then we create the "callBack" method with "setState" inside it and write that name of that callback method infront of that onChanged and onTap property
