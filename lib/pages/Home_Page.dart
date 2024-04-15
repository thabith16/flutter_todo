import 'dart:html';

import 'package:flutter/material.dart';

import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override 
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('To Do App'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile()
        ],
      ),
      );
    

  } 
}