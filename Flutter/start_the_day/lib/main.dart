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
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  String text = '';
  List<String> lista = [
    "Quantas horas voce estudou?",
    "Fazer 1 Projeto Flutter",
    "Fazer 1 Projeto Arduino",
    "Projeto Chatbot",
    "Projeto App Calistenia",
  ];

  void showText() {
    setState(() {
      text = lista[Random().nextInt(lista.length)];
    });
  }
}
