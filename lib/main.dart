import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test1/next_page.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '次へ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KBOYのFlutter大学！！'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(text),
          onPressed: () async {
            final result = await Navigator.push<String>(
              context,
              MaterialPageRoute(
                builder: (context) => const NextPage('じーこさん'),
              ),
            );
            if (result != null) {
              setState(() {
                text = result;
              });
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode) {
            print('ボタンを押しました');
          }
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
