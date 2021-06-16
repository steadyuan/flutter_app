import 'package:flutter/material.dart';

class RouteManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('路由管理')),
      body: Column(
        children: [
          RaisedButton(
            child: Text("路由跳转"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NoArgRoute();
              }));
            },
          ),
          RaisedButton(
            child: Text("路由传值"),
            onPressed: () async {
              var result = await Navigator.pushNamed(context, "has_arg_route", arguments: "我是传参");
              print("路由返回值：$result");
            },
          )
        ],
      ),
    );
  }
}

class NoArgRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由跳转"),
      ),
      body: Center(
        child: Text("Hello Flutter"),
      ),
    );
  }
}

class HasArgRoute extends StatelessWidget {
  HasArgRoute({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("路由传值")),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(args),
              RaisedButton(
                child: Text("返回"),
                onPressed: () => Navigator.pop(context, "我是返回值"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
