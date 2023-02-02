import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  Todo todo = Todo(title: "Fazer compras");
  print(todo.isDone); // imprime "false"

  todo.toggleDone();
  print(todo.isDone); // imprime "true"

  todo.toggleDone();
  print(todo.isDone);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoList(),
      child: MaterialApp(
        title: 'Todo List',
        home: TodoListScreen(),
      ),
    );
  }
}

class TodoList extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }
}

class Todo {
  final String title;
  bool isDone = false;

  Todo({
    required this.title,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}

class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Consumer<TodoList>(
        builder: (context, todoList, child) {
          return ListView.builder(
            itemCount: todoList.todos.length,
            itemBuilder: (context, index) {
              final todo = todoList.todos[index];
              return ListTile(
                title: Text(todo.title),
                trailing: Checkbox(
                  value: todo.isDone,
                  onChanged: (value) {
                    todo.toggleDone();
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final todoList = Provider.of<TodoList>(context, listen: false);
          final todo = Todo(title: 'Nova Tarefa');
          todoList.addTodo(todo);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
