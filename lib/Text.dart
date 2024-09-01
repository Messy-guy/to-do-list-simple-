// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:to_do_list/Text.dart';
import 'package:to_do_list/todotile.dart';
import 'ToDoList.dart';

class MyText extends StatelessWidget {
   MyText({super.key,required this.Title,this.size=15, this.color=const Color.fromARGB(255, 15, 15, 15), required this.check});

  String Title;
  double? size;
  Color? color;
  bool check;

  @override
  Widget build(BuildContext context) {
    return Text(Title,style: TextStyle(fontSize: size,color: color, decoration: check? TextDecoration.lineThrough : TextDecoration.none));
  }
}