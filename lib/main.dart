import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(TestApplication());

class TestApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BodyApplication(title: "Solid softwate test application"),
    );
  }
}

class BodyApplication extends StatefulWidget {
  BodyApplication({@required this.title});

  final String title;
  @override
  _BodyApplicationState createState() => _BodyApplicationState();
}

class _BodyApplicationState extends State<BodyApplication> {
  Color changeColor(colorValue) {
    Random randomColor = Random();
    setState(() {
      colorValue = Color.fromRGBO(randomColor.nextInt(255),
          randomColor.nextInt(255), randomColor.nextInt(255), 1);
    });

    return colorValue;
  }

  Color containerBackgroundColor = Colors.white;
  Color textBackgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {
          containerBackgroundColor = changeColor(containerBackgroundColor);
          textBackgroundColor = changeColor(textBackgroundColor);
        },
        child: Container(
          color: containerBackgroundColor,
          child: Center(
            child: Text(
              "Hey there",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: textBackgroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
