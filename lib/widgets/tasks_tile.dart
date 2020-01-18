import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskkTitle;
  final Function checkboxCallback;
  final Function onLongPress;

  TaskTile(
      {this.taskkTitle,
      this.isChecked,
      this.checkboxCallback,
      this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskkTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.blue,
        //onChanged: toggleCheckboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
