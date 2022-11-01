import 'package:flutter/material.dart';
//import 'package:todo_app_list/constants/colors.dart';

//Programa Principal
void main() {
  runApp(const MyApp());
}

//Constantes
const Color tdRed = Color(0xFFDA4040);
const Color tdBlue = Color(0XFF5F52EE);

const Color tdBlack = Color(0XFF3A3A3A);
const Color tdGrey = Color(0xFF717171);

const Color tdBGColor = Color(0xFFEEEFF5);

//Pagina Home
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: cabecalho(), body: const Text('This is home screen'));
  }

  AppBar cabecalho() {
    var appBar = AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(mainAxisAligmnet: MainAxisAlignment.spaceBetween, children: [
        Icon(Icons.menu, color: tdBlack, size: 30),
      ]),
      Container(
        height: 40,
        width: 40,
      ),
    );
    return appBar;
  }
}

//Aplicativo
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minha TODO List APP',
      home: Home(),
    );
  }
}
