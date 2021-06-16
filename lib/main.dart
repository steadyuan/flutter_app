import 'package:flutter/material.dart';
import 'package:flutter_app/first_flutter_app.dart';
import 'package:flutter_app/manage_route.dart';
import 'package:flutter_app/widgets/feature/widget_inherited.dart';
import 'package:flutter_app/widgets/feature/widget_provider.dart';
import 'package:flutter_app/widgets/feature/widget_theme.dart';
import 'package:flutter_app/widgets/scrollable/scroll_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // initialRoute: "/",
      routes: {
        // "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        "first_flutter_route": (context) => FirstFlutterPage(),
        "manage_route": (context) => ThemeTestRoute(),
        "has_arg_route": (context) => HasArgRoute(text: ModalRoute.of(context).settings.arguments),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('第一个应用'),
            onPressed: () => Navigator.pushNamed(context, 'first_flutter_route'),
          ),
          RaisedButton(
            child: Text('路由管理'),
            onPressed: () => Navigator.pushNamed(context, 'manage_route'),
          ),
        ],
      ),
    );
  }
}
