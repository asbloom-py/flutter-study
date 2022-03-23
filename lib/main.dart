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
                'Tanaka',
              ),
              titleTextStyle: const TextStyle(color: Colors.black),
              leading: const Icon(
                Icons.clear,
                color: Colors.black,
              ),
            ),
            body: ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
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
                          ))),
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 3,
                    endIndent: 100,
                  ),
                  Expanded(
                      child: Container(
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
                          ))),
                ],
              ),
              Column(
                children: [
                  const ListTile(
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
                  const Divider(),
                  const ListTile(
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
                  const Divider(),
                  const ListTile(
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
                  const Divider(),
                  const ListTile(
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
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 245, 227, 227),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.notification_important_sharp),
                            Text(
                              ' Politica de cancelacion',
                              style: TextStyle(color: Colors.red, fontSize: 23),
                            ),
                          ],
                        ),
                        const Text('キャンセルには、キャンセル料金がかかります。詳細はキャンセルポリシーをご覧ください。')
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 223, 223, 223),
                        child: Icon(
                          Icons.perm_device_info,
                          color: Colors.black,
                        )),
                    title: Text('Detalles del pedido'),
                  ),
                  ListTile(leading: Icon(Icons.info), title: Text('Producto')),
                  ListTile(
                    leading: Icon(Icons.card_giftcard),
                    title: Text('Producto'),
                    subtitle: Text('やさい'),
                  ),
                  ListTile(
                    leading: Icon(Icons.money),
                    title: Text('Precio del producto'),
                    subtitle: Text('100.000 Gs.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.mode_edit),
                    title: Text('Modifica el producto',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(
                    thickness: 3,
                    color: Color.fromARGB(255, 3, 133, 194),
                  ),
                  ListTile(leading: Icon(Icons.info), title: Text('Pago')),
                  ListTile(
                    leading: Icon(Icons.moped),
                    title: Text('Costo de delivery'),
                    subtitle: Text('25.000 Gs.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_pin),
                    title: Text('¿Quien paga delivery?'),
                    subtitle: Text('Destinatario'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fact_check),
                    title: Text('asigar te paga 100.000 Gs.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fact_check),
                    title: Text('asigar cobra 125.000 Gs. al destinatario'),
                  ),
                  ListTile(
                    leading: Icon(Icons.mode_edit),
                    title: Text('Modifica el pago',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(
                    thickness: 3,
                    color: Color.fromARGB(255, 3, 133, 194),
                  ),
                  ListTile(
                      leading: Icon(Icons.card_giftcard),
                      title: Text('Destinatario')),
                  //GoogleMaps 挿入する
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Nombre'),
                    subtitle: Text('Tanaka'), //空白禁止
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title:
                        Text('Numero de telefono'), //9桁か10桁の数字で先頭が0、それ以外の場合はエラー
                    subtitle: Text('123456789'),
                  ),
                  ListTile(
                    leading: Icon(Icons.mode_edit),
                    title: Text(
                      'Modifica el info del destinatario',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(
                    thickness: 3,
                    color: Color.fromARGB(255, 3, 133, 194),
                  ),
                  ListTile(
                      leading: Icon(Icons.info),
                      title: Text('Metodo de entrega')),
                  ListTile(
                    leading: Icon(Icons.drive_eta),
                    title: Text('Vehiculo'),
                    subtitle: Text('Auto'),
                  ),
                  ListTile(
                    leading: Icon(Icons.restaurant),
                    title: Text('Comida'),
                    subtitle: Text('No'),
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Cool-bin'),
                    subtitle: Text('No'),
                  ),
                  ListTile(
                    leading: Icon(Icons.note),
                    title: Text('Notas de entrega'),
                  ),
                  ListTile(
                    leading: Icon(Icons.mode_edit),
                    title: Text(
                      'Modifica metodo de entrega',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(
                    thickness: 3,
                    color: Color.fromARGB(255, 3, 133, 194),
                  ),
                  ListTile(leading: Icon(Icons.home), title: Text('Remitente')),
                  //GoogleMaps 挿入する.
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Nombre'),
                    subtitle: Text('Yamada'), //空白禁止
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title:
                        Text('Numero de telefono'), //9桁か10桁の数字で先頭が0、それ以外の場合はエラー
                    subtitle: Text('987654321'),
                  ),
                  ListTile(
                    leading: Icon(Icons.mode_edit),
                    title: Text(
                      'Modifica el info del remitente',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  Divider(
                    thickness: 3,
                    color: Color.fromARGB(255, 3, 133, 194),
                  ),
                ],
              )
            ])));
  }
}
