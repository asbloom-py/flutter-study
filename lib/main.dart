import 'package:flutter/material.dart';
import 'package:test1/next_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(kyohei: 'nann',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,required this.kyohei}) : super(key: key);
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

    return Scaffold(
      appBar: AppBar(
        
        title: Text('KBOYのFlutter大学！！'),
        
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(text),
        onPressed: () async { 
       final result = await Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => NextPage('じーこさん'),
           ),
         );
         

             setState(() {
      
    text = result;
    });
        },
    ),
    ),
        
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
       // This trailing comma makes auto-formatting nicer for build methods.
    ),
  );
  }}