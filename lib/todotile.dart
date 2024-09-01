import 'package:flutter/material.dart';
import 'package:to_do_list/Text.dart';
import 'package:to_do_list/todotile.dart';

class ToDoTile extends StatelessWidget {
   ToDoTile({super.key,required this.value,required this.onChanged,});

  bool value;
 void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.maxFinite,
      color: const Color.fromARGB(255, 237, 121, 4),
      child: Row(
        children: [
          Checkbox(
            activeColor: Colors.blueGrey,
            value: value, onChanged: onChanged,
            shape: StadiumBorder(side: BorderSide()),
          ),
          Container(
            child: MyText(Title: 'need to wake up',check: value,)
          )
        ],
      ),
    );
  }
}