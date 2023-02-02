import 'package:bot_delivery/pages/home/widgets/delivery_product_title.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ListProductPage());
}

class ListProductPage extends StatelessWidget{
  const ListProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Produtos do Bot Delivery'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const DeliveryProductTitle();
                  }
              ),
            ),
          ],
        ),
      ),);
  }

}
