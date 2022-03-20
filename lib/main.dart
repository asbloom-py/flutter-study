import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.from(
          colorScheme: const ColorScheme.light(primary: Colors.white),
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
            body: Column(
              children: [
                Row(
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
                            Text('Recogida',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text('19/03 9:00~12:00',
                                style: TextStyle(height: 2.5, fontSize: 15))
                          ],
                        )),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 3,
                      endIndent: 64,
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
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 223, 223, 223),
                        child: Icon(
                          Icons.mode_edit,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Modifica fecha y hora'),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 223, 223, 223),
                        child: Icon(
                          Icons.whatsapp,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Envia mensaje a asigar'),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 223, 223, 223),
                        child: Icon(
                          Icons.whatsapp,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Envia mensaje al destinatario'),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 223, 223, 223),
                        child: Icon(
                          Icons.block,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Cancela este pedido'),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    Divider(),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 245, 227, 227),
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.notification_important_sharp),
                              Text(
                                ' Politica de cancelacion',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 23),
                              ),
                            ],
                          ),
                          Text('キャンセルには、キャンセル料金がかかります。詳細はキャンセルポリシーをご覧ください。')
                        ],
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
