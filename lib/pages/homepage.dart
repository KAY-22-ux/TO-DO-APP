import 'package:flutter/material.dart';
import 'package:new_flutter_project/utils/todo_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context , index){
          return ToDoTile(taskName: taskName, taskCompleted: taskCompleted, onChanged: onChanged)
        },
      ),

    );
  }
}

