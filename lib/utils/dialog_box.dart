import 'package:flutter/material.dart';
import 'package:new_flutter_project/utils/save_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key ,
    required this.controller,
    required this.onSave,
    required this.onCancel

  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height:120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:"Enter task name"
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               //save button
                MyButton( text:"Save"  , onpressed : onSave ),
                //constant sized box

                const SizedBox(
                  width: 5,
                ),

                //cancel button
                MyButton( text:"Cancel" , onpressed :onCancel),


              //cancel button

              ],
            )

          ],
        ),

      ),

    );
  }
}
