import 'package:flutter/material.dart';
import 'package:gohan_treinamentos_app/pages/page1.dart';
import 'package:gohan_treinamentos_app/pages/page2.dart';
import 'package:gohan_treinamentos_app/pages/page3.dart';
import 'package:gohan_treinamentos_app/pages/page4.dart';
import 'package:gohan_treinamentos_app/widgets/card_soft.dart';

class GohanTreinamentos extends StatelessWidget {
  const GohanTreinamentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gohan Treinamentos Version 2 - 23/02/23'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Page 1 - Calistenia APP'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page1(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Page 2 - Your SuperPower'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Page 3'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page3(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Deposito de Bebidas - Debug this file'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page3(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('IPOD Music Player - Debug this file'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page3(),
                  ),
                );
              },
            ),


            ListTile(
              title: const Text('Page 4 - Organizador'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page4(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      //! Codigo para ter um scroll na minha tela
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! > 0) {
            Navigator.of(context).pop();
          }
        },
        child: SingleChildScrollView(
          //! Inicio da HomePage
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //! PARTE DE COMUNICAÇÃO
                Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('Flutter Padawan Dia 6 - 17/02/2023'),
                      const Text(
                        'COMO TENTAR ORGANIZAR SUA VIDA!',
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                      Text(
                        'CRONOGRAMA DE HORARIOS',
                        style: TextStyle(fontSize: 30),
                      ),

                      //! Modifique aqui
                      const SimpleCard(
                          titulo: 'Manha: Planejamento + Leitura',
                          card_color: Colors.blue,
                          items: [
                            ' --> ESTUDES OS CONCEITOS!',
                            '- Seja Criativo',
                            '- Gratidão',
                            '- Escolha uma Rotina -> Calistenia, Livro, Linguagem de Programação',
                            '- Conexão com a Agua e Sol',
                            '- 10 Min Meditação | 10 Min de Sol | 30 min Lendo Livros',
                            ' Vibração Baixa',
                          ]),
                      const SimpleCard(
                          titulo: 'Tarde: Prática + Coding Devloper Thinking',
                          card_color: Colors.red,
                          items: [
                            ' --> SE CONCENTRE NA PRÁTICA!',
                            '- Determinação',
                            '- Resolução de Problemas',
                            '- Terminar os Projetos e Tasks',
                            '- Alto Foco + Alta Concentração',
                            '- Resolução de Problemas',
                            ' Vibração Alta',
                          ]),
                      const SimpleCard(
                          titulo: 'Noite: Night Wolf + Relaxamento',
                          card_color: Colors.purple,
                          items: [
                            '- Estude e Faça Ciencia acontecer',
                            '- Enteder Ciclos de Vida',
                            '- Justiceiro + Super Hero',
                            '- Treine a sua mente, sua Comunicação com o Universo e Relaxe!',
                          ]),
                      //todo list com checkbox
                      Text(
                        '5 Tarefas por dia',
                        style: TextStyle(fontSize: 30),
                      ),
    // SimpleCard(titulo: 'Assistente Virtual', card_color: Colors.yellow, items: [
    //   '- Metodos de Scrum',
    //   'Organização',
    //   'ueee'
    // ]),
                      Text(
                          'O segredo da vida: https://www.youtube.com/watch?v=xFWXl8uLFtk'),

                      const Text(
                        'https://www.youtube.com/watch?v=cy7i5B18z-c',
                        textWidthBasis: TextWidthBasis.longestLine,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 26),
                      ),
                    ],
                  ),
                ),

                //!TRANSFORMAR TUDO ISSO EM SEU PRÓPRIO WIDGET
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Presente:',
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          'O presente é o momento atual, agora.',
                          style: TextStyle(fontSize: 16),
                        ),
                        const Text('Tudo é uma ação'),
                      ],
                    ),
                  ),
                ),
                //!TRANSFORMAR TUDO ISSO EM SEU PROPRIO WIDGET

                // Text(
                //   '$_counter',
                //   style: Theme.of(context).textTheme.headlineMedium,
                // ),

                const SizedBox(height: 20),
                const Text(
                  'Passado:',
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  'O passado é tudo o que já aconteceu.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Futuro:',
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  'O futuro é tudo o que ainda vai acontecer.',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  'O futuro depende do presente',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Controle de Paginas
class PageController extends ChangeNotifier {
  int _page = 0;

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }
}
