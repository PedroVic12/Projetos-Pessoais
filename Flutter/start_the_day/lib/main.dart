import 'dart:math';
import 'package:flutter/material.dart';
import 'home_page.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:url_launcher/url_launcher.dart';

// - 3 Telas de Navegação para cada arquivo
// - Flutter for Dummies
// - COMANDOS POR VOZ COM UM BOTÃO PARA ELE ME OUVIR E ACIONAR O PYTHON
// - AudioBook 1 trecho de 1 capitulo  do Clean Code

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
  String TEXTO = '';

  //Sua proxima tarefa é {}, se responder sim, começa, senão hora da pausa

  // notificação das fases da lua

  // Tela muda a cor de fundo todos os dias, qual o siginificado do dia? ver video xamanismo

  List <String> movimentosCalistenia = [
    "Muscle Up",
    "HandStand",
    "Full Planche",
    "Pull Over"
  ];

  List <String> osSeteChakras = [
    "Chakra Base",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7"

  ];

  List<String> superDesenvolvedor = [
    "Habilidades de Resultados Rápidos",
    "Habilidades de Aceleração de Carreira",
    "Habilidades de Marketing Pessoal",
    "Domine uma linguagem e um framework, CRUD, Apis, Filtros, Relatórios, Banco de Dados"
  ];

  List<String> filmes = ["Ouse Sonhar Netflix", "Lobo de Wall Street"];

  List<String> hormonios = ["Dopamine", "Oxytocin", "Endorphins", "Serotonin"];

  //
  List<String> momentoChill = [
    "Ver Video no Youtube de como se tornar um dev melhor",
    "Se alongar, meditar ou treinar",
    "Musica de elevador para relaxar"
  ];

  // Lofi, rock ou will i am para focar
  List<String> objetivos = [
    "Chatbot Whatsapp",
    "Flutter Todo List + Organização + Flutter For Dummies + Assistente com Voz",
    "Muscle Up",
    "Manha \n Tem que ser Tarefas Leves para acordar e aquecer os codigos! \n- Flutter",
    "Tarde \n- Codificar ouvindo musica alta e se divertindo! \n- ChatbotWhatsapp",
    "Noite \n- Seja criativo, inove e faça a diferença! \n- Faça o que voce quiser!",
  ];

  List <String> orientacao_objetos = [
    "Encapsulamento",
    "Imutabilidade",
    "Herança",
    "Polimorfismo"
  ];

  List<String> lista = [

    "Arrumar o Portifolio (Gohan Treinamentos) ",
    "Fazer 1 Projeto Flutter",
    "Fazer 1 Projeto Arduino",
    "Projeto Chatbot Whatsapp",
    "Projeto C3PO (Assistente)",
    "Arduino Boson Treinamentos + Automação na Veia",
    "Aula Dio Innovation (IoT + Inteligencia Artificial)",
    "Qual a inspiração do dia de hoje? Medite, busque a serenidade e encontre a resposta",
    "Qual a mensagem pro meu coração e como pode ser util para todos os seres humanos e para todos os seres do planeta Terra? (Pense no bem maior)"
  ];
  void showHormonios() {
    setState(() {
      TEXTO = hormonios[Random().nextInt(hormonios.length)];
    });
  }

  void showText() {
    setState(() {
      TEXTO = objetivos[Random().nextInt(objetivos.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Navigator(onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(title: const Text("Voce merece esse APP")),
              body: SingleChildScrollView(
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),

                          // Botão para a navegação HomePage
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue, // foreground
                              ),
                              child: const Text("HomePage")),
                        ),
                        const Text("Seja Criativo como o Steve Jobs"),
                        const Text("Seja Determinado como o Bill Gates"),
                        const Text("\n90 Minutos DEEP FOCUS + 30 Minutos REST\n"),
                        InkWell(
                          child: const Text("Link para o Google"),
                          onTap: () {
                            //launch('https://www.google.com/');
                            print("1:35 The Batman!");
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 30),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 5)),
                          child: Column(
                            children: [
                              const Text(
                                "Objetivos do dia",
                                style: TextStyle(
                                    fontFamily: AutofillHints.jobTitle,
                                    fontSize: 35),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(TEXTO,
                                    style: const TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
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
                          margin: const EdgeInsets.only(bottom: 30),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 5)),
                          child: Column(
                            children: [
                              const Text(
                                "Hormonios",
                                style: TextStyle(
                                    fontFamily: AutofillHints.jobTitle,
                                    fontSize: 35),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(TEXTO,
                                    style: const TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepPurple, // background
                                    onPrimary: Colors.white, // foreground
                                  ),
                                  onPressed: showHormonios,
                                  child: const Text(
                                      'Relaxe e deixe que o universo resolva',
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
            ),
          );
        }));
  }
}
