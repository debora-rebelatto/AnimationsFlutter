import 'dart:math';

import 'package:animations_flutter/AnimatedSquare.dart';
import 'package:animations_flutter/Tween.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animations'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('AnimatedSquare'),
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnimatedSquare()));
            },
          ),
          ListTile(
            title: Text('Tween'),
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(builder: (context) => TweenAnimation()));
            },
          )
        ],
      )
    );
  }
}
