import 'package:flutter/material.dart';

class TextWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Column(
        children: [
          Text(
            "Hello world",
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 1.5,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: "Courier",
                background: Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: 'Home:'),
            TextSpan(
              text: 'https://flutterchina.club',
              style: TextStyle(color: Colors.blue),
              // recognizer: () {},
            )
          ])),
        ],
      ),
    );
  }
}
