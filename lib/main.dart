import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/next_page.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        kyohei: 'nann',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.kyohei}) : super(key: key);
  final String kyohei;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = '次へ';

  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Text(
              'KBOYさん',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          DefaultTextStyle(
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
              ),
              child: Column(
                children: [
                  Text('ジーコさん'),
                  Text('ジーコさん'),
                  Text('ジーコさん'),
                ],
              ))
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学！！'),
      ),
      body: center,
    );
  }
}
