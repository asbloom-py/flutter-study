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
  String text = '次へ';

  @override
  Widget build(BuildContext context) {
    final center = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
            child: Text(
              'KBOYさん',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 20,
              color: Colors.purple,
            ),
            child: Column(
              children: const [
                Text('ジーコさん'),
                Text('ジーコさん'),
                Text('ジーコさん'),
              ],
            ),
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('KBOYのFlutter大学！！'),
      ),
      body: center,
    );
  }
}
