import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/todo_list_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key, required this.listOfTodos});

  final List<Todo> listOfTodos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfTodos.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(listOfTodos[index]),
        child: TodoListItem(item: listOfTodos[index]),
      ),
    );
  }
}
