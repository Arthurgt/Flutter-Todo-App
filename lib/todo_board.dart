import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/todo_list.dart';
import 'package:flutter_todo_app/todo_new_item.dart';

class TodoBoard extends StatefulWidget {
  const TodoBoard({super.key});

  @override
  State<TodoBoard> createState() {
    return _TodoBoardState();
  }
}

class _TodoBoardState extends State<TodoBoard> {
  List<Todo> listOfTodos = [
    Todo(
        name: 'Flutter course',
        note: 'Complete the flutter course section',
        done: false),
    Todo(
        name: 'Spanish lesson',
        note: 'I have to complete spanish restaurant seciotn',
        done: false)
  ];

  void _openAddNoteOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const TodoNewItem(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo app'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _openAddNoteOverlay,
          ),
        ],
      ),
      body: TodoList(listOfTodos: listOfTodos),
    );
  }
}
