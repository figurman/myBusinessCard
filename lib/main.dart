library widget_circular_animator;

import 'package:flutter/material.dart';
import 'package:my_business_card/circular_animator.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _myAnimatedWidget = FirstWidget();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My business card!"),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.gif'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.transparent,
                height: 220,
                width: 220,
                child: WidgetCircularAnimator(
                  size: 220,
                  innerIconsSize: 3,
                  outerIconsSize: 3,
                  innerAnimation: Curves.bounceIn,
                  outerAnimation: Curves.bounceIn,
                  innerColor: Colors.blue,
                  reverse: true,
                  outerColor: Colors.blue,
                  innerAnimationSeconds: 10,
                  outerAnimationSeconds: 10,
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _myAnimatedWidget =
                            (_myAnimatedWidget.toString() == "FirstWidget")
                                ? SecondWidget()
                                : FirstWidget();
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(170)),
                    child: AnimatedSwitcher(
                      duration: const Duration(seconds: 1),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return ScaleTransition(
                          child: child,
                          scale: animation,
                        );
                      },
                      child: _myAnimatedWidget,
                    ),
                  ),
                ),
              ),
              Text("I am",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text(
                "SpaceMan",
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Go to space with me!)",
                style: TextStyle(
                  fontSize: 37.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 380,
                    height: 55,
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      color: Colors.blue,
                      border: Border.all(),
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 8),
                          child: Text(
                            "380638379403",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 380,
                    height: 55,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      color: Colors.blue,
                      border: Border.all(),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.email),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 8),
                          child: Text(
                            "smelya2000@gmail.com",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 100.0,
        backgroundImage: AssetImage("assets/avatar.jpg"),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff323854),
        border: new Border.all(
          width: 3.0,
          color: Colors.transparent,
        ),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 100.0,
        backgroundImage: AssetImage("assets/qr_code.gif"),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff323854),
        border: new Border.all(
          width: 3.0,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
