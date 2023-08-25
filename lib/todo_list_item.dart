import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.item});

  final Todo item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(item.name),
          Row(
            children: [
              Text(item.note),
              Text(item.done.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
