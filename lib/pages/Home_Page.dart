import 'dart:html';

import 'package:flutter/material.dart';
import 'package:todoapp/util/dialog_box.dart';

import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override 
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  //text controller
  final _controller = TextEditingController();

//list of todo tasks
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Excercise", false],
  ];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
    
  }

  //save new task
  void saveNewTask() {
    setState(() {
      toDoList.add([ _controller.text, false]);
    });
  } 

  //create a new task
  void createNewTask() {
    showDialog(
      context: context, 
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop()
          );
      },
    );  
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('To Do'),
        elevation: 0,
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    
    ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
            
            );

        },

      ),
      );
    

  } 
}