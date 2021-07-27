import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({ Key? key }) : super(key: key);

  @override
  _TweenAnimationState createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tween")),
      body: Center(
        child: TweenAnimationBuilder<double>(
          duration: Duration(milliseconds: 500),
          tween: Tween(begin: 0.0, end: 1.0),
          child: Container(width: 120, height: 120, color: Colors.red),
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(value * 200 - 100, 0),
              child: child,
            );
          },
        ),
      ),
    );
  }
}