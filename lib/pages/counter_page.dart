import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  //variable
  int _counter = 0 ;

  // method
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  //ui desings
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times" , style: TextStyle(color: Colors.white), ),
            Text(_counter.toString() ,style: TextStyle(fontSize: 40 , color: Colors.white),),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: _incrementCounter, child: Text("+" , style: TextStyle(fontSize: 20),)),

                  ElevatedButton(onPressed: _decrementCounter, child: Text("-" , style: TextStyle(fontSize: 20),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
