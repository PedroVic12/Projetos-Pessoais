import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:url_launcher/url_launcher.dart';


//- Barra de Rolagem
// - 3 Telas de Navegação para cada arquivo
// - Flutter for Dummies

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

  String ObjetivoTexto = '';

  List<String> superDesenvolvedor = [
    "Habilidades de Resultados Rapidos",
    "Habilidades de Acelereção de Carreira",
    "Habilidades de Marketing Pessoal",
    "Domine uma linguagem e um framework, CRUD, Apis, Filtros, Relatorios, Banco de Dados"
  ];

  List<String> filmes = ["Ouse Sonhar Netflix", "Lobo de Wall Street"];

  List<String> hormonios = ["Dopamine", "Oxytocin", "Endorphins", "Serotonin"];

  List<String> objetivos = [
    "Chatbot Whatsapp",
    "Flutter Todo List + Organização + Flutter For Dummies + Assistente com Voz",
    "Muscle Up"
  ];


  List<String> lista = [
    "Arrumar o Portifolio (Gohan Treinamentos)",
    "Fazer 1 Projeto Flutter",
    "Fazer 1 Projeto Arduino",
    "Projeto Chatbot Whatsapp",
    "Projeto C3PO (Assistente)",
    "Arduino Boson Treinamentos + Automação na Veia",
    "Aula Dio Innovation (IoT + Inteligencia Artificial)",
    "Qual a inspiração do dia de hoje? Medite, busque a serenidade e encontre a resposta",
    "Qual a mensagem pro meu coração e como pode ser util para todos os seres humanos e para todos os seres do planeta Terra? (Pense no bem maior)"
  ];
void showHormonios(){
  setState(() {
    ObjetivoTexto = hormonios[Random().nextInt(hormonios.length)];
  });
}


  void showText() {
    setState(() {
      ObjetivoTexto = objetivos[Random().nextInt(objetivos.length)];
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Voce merece esse APP")),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Text("Link para o Google"),
                  onTap: () {
                    //launch('https://www.google.com/');
                    print("1:35 The Batman!");
                  },
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5)
                  ),

                  child: Column(
                    children: [

                      const Text(
                        "Objetivos do dia",
                        style: TextStyle(
                            fontFamily: AutofillHints.jobTitle, fontSize: 35),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(ObjetivoTexto,
                            style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          onPressed: showText,
                          child: const Text('Gerar Tarefa Aleatória',
                              style: TextStyle(fontSize: 30)),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 5)),
                  child: const Text(
                    "==> TODO LIST \n\n - Objetivos do dia \n\n -Projetos \n\n - Horas de Pomodoro \n\n https://docs.flutter.dev/cookbook",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
