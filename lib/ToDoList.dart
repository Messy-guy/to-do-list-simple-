import 'package:flutter/material.dart';
import 'package:to_do_list/Text.dart';
import 'package:to_do_list/todotile.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  
  bool isTracker =false;

  void onChanged(){
    setState(() {
      if(isTracker==false){
      isTracker = true;
    }
    else{
      isTracker = false;
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do-List'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),

      body:Container(
        child: Column(
          children: [
             ToDoTile(value: isTracker, onChanged:(p0) {
               onChanged();
             },),
          ],
        ),
      ),
    ) ;
  }
}