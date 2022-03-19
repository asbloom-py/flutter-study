import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.from(
          colorScheme: const ColorScheme.light(primary: Colors.orange),
        ),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                'DestName',
              ),
              titleTextStyle: const TextStyle(color: Colors.black),
              leading: const Icon(
                Icons.clear,
                color: Colors.black,
              ),
            ),
            body: Card(
              elevation: 4.0,
              margin: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/neko1_600x400.jpg'),
                  _titleArea(),
                  _buttonArea(),
                  _descriptionArea()
                ],
              ),
            )));
  }
}
