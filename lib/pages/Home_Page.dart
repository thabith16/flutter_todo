import 'dart:html';

import 'package:flutter/material.dart';

import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override 
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

//list of todo tasks
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Excercise", false],
  ];

  // checkbox was tapped
  void checkBoxChanged() {
    
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('To Do App'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged: (value) => checkBoxChanged,
            
            );

        },

      ),
      );
    

  } 
}