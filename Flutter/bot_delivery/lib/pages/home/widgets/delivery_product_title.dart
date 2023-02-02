import 'package:flutter/material.dart';

class DeliveryProductTitle extends StatelessWidget {
  const DeliveryProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
      Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Item Produto {}'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Descrição do Produto'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Preço = R\$ 10 Reias'),
          )
        ],
      )
      ],
    );
  }
}
