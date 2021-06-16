import 'package:flutter/material.dart';

class ButtonWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("send"),
            onPressed: () {},
          ),
          FlatButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            child: Text("add"),
            onPressed: () {},
          ),
          OutlineButton.icon(
            icon: Icon(Icons.info),
            label: Text("info"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
