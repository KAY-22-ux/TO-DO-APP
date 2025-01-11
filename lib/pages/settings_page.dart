import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
        body: Center(
          child: Text('Settings page' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 50),),
        )
    );
  }
}
