import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(TestApplication());

class TestApplication extends StatefulWidget {
  @override
  _TestApplicationState createState() => _TestApplicationState();
}

class _TestApplicationState extends State<TestApplication> {
  Random randomColor = Random();
  Color backgroundColor = Color.fromRGBO(255, 255, 255, 1);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Solid Softwate test application",
          ),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              backgroundColor = Color.fromRGBO(randomColor.nextInt(255),
                  randomColor.nextInt(255), randomColor.nextInt(255), 1);
            });
          },
          child: Container(
            color: backgroundColor,
            child: Center(
              child: Text(
                "Hey there",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
