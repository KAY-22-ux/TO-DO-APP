import 'package:flutter/material.dart';
import 'package:new_flutter_project/utils/todo_tile.dart';

import '../utils/dialog_box.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //text controller
  final _controller = TextEditingController();

  //check box method
  void checkBoxChanged(bool value , int index){
    setState((){
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  //save new task
  void saveNewTask(){
    setState(() {
      toDoList.add([_controller.text , false],);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //create new task
  void createNewTask(){
    showDialog(context: context,
        builder: (context){
      return DialogBox(controller :_controller,
      onSave: saveNewTask,
      onCancel: () => Navigator.of(context).pop,);

    });
  }

  List toDoList  = [
    ["making tutorial" , false],
    ["Do exercise" , false]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Center(child: Text("TO DO" , style: TextStyle(fontWeight: FontWeight.w500),
      )), backgroundColor: Colors.yellow,
      elevation: 0,),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: createNewTask,
          child: Icon(Icons.add),

      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context , index){
          return ToDoTile(taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value!,index) );
        },
      ),

    );
  }
}

