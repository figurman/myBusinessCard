import 'package:flutter/material.dart';

import 'circular_animator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: WidgetCircularAnimator(
          size: 350,
          innerIconsSize: 3,
          outerIconsSize: 3,
          innerAnimation: Curves.bounceIn,
          outerAnimation: Curves.bounceIn,
          innerColor: Colors.orangeAccent,
          reverse: true,
          outerColor: Colors.orangeAccent,
          innerAnimationSeconds: 7,
          outerAnimationSeconds: 10,
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            child: Icon(
              Icons.person_outline,
              color: Colors.deepOrange[200],
              size: 60,
            ),
          ),
        )),
      ),
    );
  }
}
