import 'package:flutter/material.dart';
import 'package:gohan_treinamentos_app/widgets/CustomContainer.dart';
import 'package:gohan_treinamentos_app/widgets/ScrollTela.dart';
import 'package:gohan_treinamentos_app/widgets/YoutubePlayer.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calistenia APP'),
      ),
      body: MyGestureDetector(
        child: SafeArea(
          child: Column(
            children: [
//Debug, COde, Motivation, Rest and Train

// 4 botoes

// 2 cards no centro

// plano de fundo

// setas com svg

// botão bolado que sai som do pokemon ao apertar e tem uma animação --> Seus proprios widgets
            Text('TREINO DE PEITO'),
              Text('TREINO DE COSTAS'),

              Text('TREINO DE PERNA'),
              Text('TREINO DE ABS'),


              YoutubeLink(
                  link: 'https://www.youtube.com/watch?v=RlKxgwMzVdA&t=186s'),


              CustomContainer(
                cor_container: Colors.orange,
                conteudo: 'Ola mundo',
                cor_texto: Colors.white,
              ),

              CustomContainer(
                cor_container: Colors.yellow,
                conteudo: 'Ola mundo',
                cor_texto: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
