import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var message = '';
  var status = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  try {
                    var response =
                        await http.get(Uri.parse('http://127.0.0.1:8000/'));

                    var data = jsonDecode(response.body);
                    setState(() {
                      message = data['message'];
                      status = data['status'];
                      print(data);
                    });
                  } catch (e) {
                    print('Erro: $e');
                  }
                },
                child: Text('Fazer uma requisição HTTP Rest'),
              ),
              Text(message),
              Text(status),
            ],
          ),
        ),
      ),
    );
  }
}
