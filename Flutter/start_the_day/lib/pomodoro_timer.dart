import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp( PomodoroApp());
}

class PomodoroApp extends StatefulWidget {
  @override
  _PomodoroAppState createState() => _PomodoroAppState();
}

class _PomodoroAppState extends State<PomodoroApp> {
  int _timeLeft = 25;
  bool _isRunning = false;

  void _startTimer() {
    setState(() {
      _isRunning = true;
    });

    const oneSec = const Duration(seconds: 1);
    var _duration = Duration(minutes: _timeLeft);
    var _timer = Timer.periodic(_duration, (timer) {
      setState(() {
        if (_timeLeft < 1) {
          _timer.cancel();
          _isRunning = false;
        } else {
          _timeLeft = _timeLeft - 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pomodoro Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_timeLeft',
              style: TextStyle(fontSize: 72),
            ),
            SizedBox(height: 16),
            _isRunning
                ? RaisedButton(
              onPressed: () {},
              child: Text('Stop'),
            )
                : RaisedButton(
              onPressed: _startTimer,
              child: Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
