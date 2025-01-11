import 'package:flutter/material.dart';

class TodoAppPage extends StatefulWidget {
  const TodoAppPage({super.key});

  @override
  State<TodoAppPage> createState() => _TodoAppPageState();
}

class _TodoAppPageState extends State<TodoAppPage> {

  //text editing controller
  TextEditingController userText = TextEditingController();


  //greeting user message
  String greetingMessage = "";


  //greet user method
  void greetUser(){
    String greetingsMessage = userText.text;
    setState(() {
      greetingMessage = "hello," + greetingsMessage;
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),

              TextField(
                controller: userText,
                decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: "Type your name..."),

              ),

              //button
              ElevatedButton(onPressed: greetUser, child: Text("Tap"))
            ],

          ),
        ),
      ),
    );
  }
}
