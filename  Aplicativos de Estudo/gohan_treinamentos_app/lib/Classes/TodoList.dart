import 'package:flutter/material.dart';
import 'package:gohan_treinamentos_app/provider/menu_provider.dart';
import 'package:provider/provider.dart';

class TodoList extends StatefulWidget {
  final String titulo;

  const TodoList({Key? key, required this.titulo}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  late Menu _menu;

  @override
  void initState() {
    super.initState();
    _menu = Provider.of<Menu>(context, listen: false);
  }

  void _adicionarItem(String descricao) {
    setState(() {
      _menu.adicionarItem(descricao);
    });
  }

  void _alternarItem(int index) {
    setState(() {
      _menu.alternarItem(index);
    });
  }

  Widget _criarItem(BuildContext context, int index) {
    final item = _menu.getItem(index);

    return CheckboxListTile(
      value: item.concluido,
      title: Text(item.descricao),
      onChanged: (valor) => _alternarItem(index),
    );
  }

  Widget _criarLista() {
    return ListView.builder(
      itemBuilder: _criarItem,
      itemCount: _menu.quantidadeDeItens,
    );
  }

  Widget _criarAdicionarItem() {
    final controller = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(hintText: 'Adicionar novo item'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _adicionarItem(controller.text);
              controller.clear();
            },
            child: Text('Adicionar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.titulo),
        Expanded(
          child: Center(
            child: Consumer<Menu>(
              builder: (context, menu, child) {
                return _criarLista();
              },
            ),
          ),
        ),
        _criarAdicionarItem(),
      ],
    );
  }
}
