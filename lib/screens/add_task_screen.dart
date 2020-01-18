import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final newTaskTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(45.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26.0, color: Colors.blue),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: newTaskTitleController,
            ),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Create chore",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addNewTask(newTaskTitleController.text);
                  Navigator.pop(context);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)))
          ],
        ),
      ),
    );
  }
}
