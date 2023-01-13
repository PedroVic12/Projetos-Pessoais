import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  
  String texto = '';
  List<String> lista = [
    "Arrumar o Portifolio (Gohan Treinamentos)",
    "Fazer 1 Projeto Flutter",
    "Fazer 1 Projeto Arduino",
    "Projeto Chatbot Whatsapp",
    "Projeto App Calistenia",
    "Projeto C3PO (Assistente)"
  ];

  void showText() {
    setState(() {
      texto = lista[Random().nextInt(lista.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Voce merece esse APP")
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Text(texto,style: TextStyle(color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 40)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: showText,
                child: const Text('Gerar Tarefa Aleatória',
                        style: TextStyle(fontSize: 30)),
              ),


           Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
               border: Border.all(color: Colors.red, width: 5)
               ),
               child: Text("==> TODO LIST \n\n - Objetivos do dia \n\n -Projetos \n\n - Horas de Pomodoro",
                 style: TextStyle(fontSize: 30),
               ) )
            ]
          ),
          ),
        ),
      );
  }
}
