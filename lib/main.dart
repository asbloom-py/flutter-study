import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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
            Row(
              children: [
                Image.network(
                  'https://s3-ap-northeast-1.amazonaws.com/qiita-organization-image/562149f7ec4ab60dc93eb10dc4877d9453946b73/original.jpg?1599561074',
                  width: 100,
                ),
                Column(
                  children: [
                    const Text('KBOYのFlutter大学'),
                    Row(
                      children: [
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
                              Icons.video_call,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Text('登録する'),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
