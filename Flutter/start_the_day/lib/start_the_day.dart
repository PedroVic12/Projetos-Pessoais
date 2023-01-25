import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: StartTheDay(),
    );
  }
}

class StartTheDay extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _StartTheDayState extends State<StartTheDay> {
  String _currentTime;
  String _greeting;

  @override
  void initState() {
    super.initState();
    _getCurrentTime();
  }

  void _getCurrentTime() {
    final DateTime now = DateTime.now();
    final String formattedTime = DateFormat('HH:mm').format(now);
    setState(() {
      _currentTime = formattedTime;
      _getGreeting();
    });
  }

  void _getGreeting() {
    int hour = int.parse(_currentTime.split(":")[0]);
    if (hour < 12) {
      _greeting = "Bom dia!";
    } else if (hour < 18) {
      _greeting
