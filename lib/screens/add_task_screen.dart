import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function updateListCallback;

  const AddTaskScreen({required this.updateListCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 30.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newValue) {
                  newTaskTitle = newValue;
                },
              ),
              TextButton(
                onPressed: () {
                  updateListCallback(newTaskTitle);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
