import 'package:flutter/material.dart';

void main() {
  runApp(
    App(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ),
  );
}

class App extends StatelessWidget {
  final List<String> items;

  // ignore: sort_constructors_first
  const App({Key? key, required this.items}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: const Color(0xffffffff),
          leading: const Icon(Icons.videocam, color: Colors.black),
          title: const Text(
            'KBOYのFlutter大学',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            SizedBox(
              width: 44,
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //to do
                },
                child: const Icon(Icons.search, color: Colors.black),
              ),
            ),
            SizedBox(
              width: 44,
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //to do
                },
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.network(
                      'https://s3-ap-northeast-1.amazonaws.com/qiita-organization-image/562149f7ec4ab60dc93eb10dc4877d9453946b73/original.jpg?1599561074',
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      const Text('KBOYのFlutter大学'),
                      TextButton(
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            const Text(
                              '登録する',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        onPressed: () {
                          //todo
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
