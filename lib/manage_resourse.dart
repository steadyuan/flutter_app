import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Column(
        children: [
          RandomWordsWidget(),
          ImageWidget(),
        ],
      ),
    );
  }
}


Future<String> loadAsset() async {
  return rootBundle.loadString('assets/config.json');
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(wordPair.toString()),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Image.asset('images/ic_launcher.png');
    return DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/ic_launcher.png'),
          )),
    );
  }
}