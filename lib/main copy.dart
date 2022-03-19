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
          body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(
                      top: 15,
                    ),
                    color: Colors.transparent,
                    height: 100,
                    width: 170,
                    child: Column(
                      children: const [
                        Text('recogida',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('19/03 9:00~12:00',
                            style: TextStyle(height: 2.5, fontSize: 15))
                      ],
                    )),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 3,
                  endIndent: 640,
                ),
                Container(
                    padding: EdgeInsets.only(
                      top: 15,
                    ),
                    color: Colors.transparent,
                    height: 100,
                    width: 170,
                    child: Column(
                      children: const [
                        Text('Entrega',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('19/03 13:00~15:00',
                            style: TextStyle(height: 2.5, fontSize: 15))
                      ],
                    )),
              ]),
        ));
  }
}
