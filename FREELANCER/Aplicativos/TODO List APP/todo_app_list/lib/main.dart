// ignore_for_file: avoid_unnecessary_containers, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//! Class App principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Método Construtor de um widget stateless
  @override
  Widget build(BuildContext context) {
    //Criando a interface
    return MaterialApp(
      title: 'Meu TODO list',
      home: MyHome(),
    );
  }
}

//!página Home
class MyHome extends StatefulWidget {
  //Método Construtor de um widget Stateful
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

//!Layout(css) do MyHome
class MyHomeState extends State<MyHome> {
  final TextEditingController taskController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> _tasks = [];

  //Construtor do widget
  @override
  Widget build(BuildContext context) {
    //Scaffold é um layout pronto da google
    return Scaffold(
        appBar: AppBar(
          title: const Text('Meu TODO List'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Form(
                  key: _formKey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: taskController,
                          style: const TextStyle(
                              fontSize: 32, color: Colors.black87),
                          decoration: const InputDecoration(
                              hintText: "Digite uma Tarefa",
                              hintStyle: TextStyle(fontSize: 20)),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: ElevatedButton(
                          child: const Text(
                            'Adicionar',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            print('Cliquei!');
                            setState(() {
                              _tasks.add(taskController.text);
                            });
                            taskController.clear();
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: _tasks.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(_tasks[index]),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
