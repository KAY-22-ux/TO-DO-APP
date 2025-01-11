import 'package:flutter/material.dart';
import 'package:new_flutter_project/pages/homepage.dart';
import 'package:new_flutter_project/pages/todo_app_page.dart';

import 'pages/counter_page.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // //function for user tapped
  // void userTapped(){
  //   print("user tapped!");
  // }



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}


