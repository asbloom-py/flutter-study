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
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(
            100,
            (index) {
              return Column(
                children: <Widget>[
                  Image.network(
                    'https://pbs.twimg.com/profile_images/1459134588857761792/hLuvCmqo_400x400.jpg',
                  ),
                  Text('$index')
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
