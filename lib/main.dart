import 'package:flutter/material.dart';
import 'package:flutter_application_1/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(primary: Colors.white),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: const Icon(
            Icons.videocam,
            color: Colors.black,
          ),
          title: const Text(
            'KBOYのflutter大学',
          ),
          actions: [
            SizedBox(
              width: 44,
              child: TextButton(
                child: const Icon(Icons.search),
                style: TextButton.styleFrom(primary: Colors.black),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 44,
              child: TextButton(
                child: const Icon(Icons.more_vert),
                style: TextButton.styleFrom(primary: Colors.black),
                onPressed: () {},
              ),
            )
          ],
          titleTextStyle: const TextStyle(color: Colors.black),
        ),
        body: Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.network(
                        'https://backlog.com/ja/git-tutorial/assets/img/common/bg_important.png'),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('KBOYのflutter大学'),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            const Text('登録する'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () async {
                      //todo: 画面推移
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoDetailPage(),
                        ),
                      );
                    },
                    contentPadding: EdgeInsets.all(8),
                    leading: Image.network(
                        'https://backlog.com/ja/git-tutorial/assets/img/common/bg_important.png'),
                    title: Column(
                      children: [
                        const Text(
                          '[Flutter超入門] リストを作る方法',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            const Text(
                              '267回再生',
                              style: TextStyle(fontSize: 13),
                            ),
                            const Text(
                              '5日前',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    ),
                    textColor: Colors.black,
                    trailing: Icon(Icons.more_vert),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
