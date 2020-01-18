import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskkTitle;
  final Function checkboxCallback;

  TaskTile({this.taskkTitle, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
