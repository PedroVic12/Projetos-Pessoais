import 'package:flutter/material.dart';

class Item {
  final String nome;
  final double preco;

  Item(this.nome, this.preco);
}

class MenuBloc {
  final _selectedItems = BehaviorSubject<List<Item>>();

  Stream<List<Item>> get selectedItems => _selectedItems.stream;

  void selectItem(Item item) {
    _selectedItems.add(_selectedItems.value..add(item));
  }

  void deselectItem(Item item) {
    _selectedItems.add(_selectedItems.value..remove(item));
  }

  void dispose() {
    _selectedItems.close();
  }
}

class HomeScreen extends StatelessWidget {
  final MenuBloc bloc = MenuBloc();

  void verCarrinho() {
    // Adicione aqui a lógica para visualizar o carrinho
  }

  void fazerCompra() {
    // Adicione aqui a lógica para fazer a compra
  }

  void reiniciarPedido() {
    // Adicione aqui a lógica para reiniciar o pedido
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Night Wolf"),
      ),
      body: StreamBuilder<List<Item>>(
        stream: bloc.selectedItems,
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                title: Text(item.nome),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => bloc.selectItem(item),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              child: Text("Ver Carrinho"),
              onPressed: verCarrinho,
            ),
            FlatButton(
              child: Text("Fazer Compra"),
              onPressed: fazerCompra,
            ),
            FlatButton(
              child: Text("Reiniciar Pedido"),
              onPressed: reiniciarPedido,
            ),
          ],
        ),
      ),
    );
  }
}
