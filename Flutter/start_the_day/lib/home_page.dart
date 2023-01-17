import 'package:flutter/material.dart';
import 'package:start_the_day/gohan_treinamentos.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Wrap(
                  spacing: 15,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Assistente")),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Todo List")),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Gohan Treinamentos"))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(2, 2), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  children: const [
                    //Colocar uma imagem ilustrativa aqui
                    Text("Aqui vai ter uma imagem"),
                    ListTile(
                      leading: Icon(Icons.access_alarm),
                      title: Text("Alarme"),
                      subtitle: Text("Alarme para lembrar de fazer algo"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
              GestureDetector(onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const GohanTreinamentos();
                    },
                  ),
                );

                Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 5),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 59, 59, 59).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(2, 2), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    children: const [
                      //Colocar uma imagem ilustrativa aqui
                      Text("Aqui vai ter uma imagem"),
                      ListTile(
                        leading: Icon(Icons.access_alarm),
                        title: Text("Alarme"),
                        subtitle: Text("Alarme para lembrar de fazer algo"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
