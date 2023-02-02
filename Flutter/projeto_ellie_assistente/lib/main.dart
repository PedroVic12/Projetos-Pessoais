import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Positioned(
              left: 50.0,
              top: 30.0,
              child: Text('Text 1'),
            ),
            const Positioned(
              right: 50.0,
              top: 60.0,
              child: Text('Text 2'),
            ),
            Positioned(
              left: 75.0,
              top: 45.0,
              child: SvgPicture.asset(
                'assets/arrow.svg',
                width: 100,
                height: 100,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
