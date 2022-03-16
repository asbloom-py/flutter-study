// ignore: eol_at_end_of_file
// ignore_for_file: inference_failure_on_function_invocation

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        kyohei: 'テスト',
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
  final items = [
    'KBOY 1',
    'KBOY 2',
    'KBOY 3',
    'Kyo 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KBOYのFlutter大学！！'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              width: 160,
              height: 80,
              color: Colors.red,
            ),
            Container(
              width: 160,
              height: 80,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              height: 80,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
