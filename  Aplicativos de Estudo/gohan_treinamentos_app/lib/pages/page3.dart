import 'package:flutter/material.dart';
import 'package:gohan_treinamentos_app/widgets/CustomContainer.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomContainer(
              cor_container: Colors.blue.shade800,
              conteudo: 'teste',
              cor_texto: Colors.white,
            ),
            CustomContainer(
              cor_container: Colors.purple.shade800,
              conteudo: 'Olá mundo',
              cor_texto: Colors.white,
            ),
            CustomContainer(
              cor_container: Colors.red.shade800,
              conteudo: 'Olá mundo',
              cor_texto: Colors.white,
            ),
            CustomContainer(
              cor_container: Colors.green.shade800,
              conteudo: 'Olá mundo',
              cor_texto: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
