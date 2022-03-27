import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/producto.dart';

import 'fechayhora.dart';

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
      home: Home(titleText: 'dada'),
    );
  }
}

class Home extends StatelessWidget {
  final String? titleText;
  const Home({this.titleText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        color: Colors.transparent,
                        height: 120,
                        width: 170,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Recogida',
                                style: TextStyle(
                                    height: 2.0,
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text('19/03',
                                style: TextStyle(height: 2.0, fontSize: 13)),
                            Text('9:00~12:00',
                                style: TextStyle(height: 2.0, fontSize: 13))
                          ],
                        ))),
                const VerticalDivider(
                  color: Colors.black,
                  thickness: 0.1,
                  width: 2,
                  indent: 20.0,
                  endIndent: 10.0,
                ),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        color: Colors.transparent,
                        height: 120,
                        width: 170,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Entrega',
                                style: TextStyle(
                                    height: 2.0,
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text('19/03',
                                style: TextStyle(height: 2.0, fontSize: 13)),
                            Text('13:00~15:00',
                                style: TextStyle(height: 2.0, fontSize: 13))
                          ],
                        ))),
              ],
            ),
          ),
          const Divider(
            height: 3,
            indent: 15,
            endIndent: 15,
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.mode_edit,
                  color: Colors.black,
                ),
                title: Text(
                  'Modifica fecha y hora',
                ),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Fechayhora('19/03 9:00~12:00')),
                  );
                },
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              const ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
                title: Text('Envia mensaje a asigar'),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              const ListTile(
                leading: Icon(
                  Icons.whatsapp,
                  color: Colors.black,
                ),
                title: Text('Envia mensaje al destinatario'),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              const ListTile(
                leading: Icon(
                  Icons.block,
                  color: Colors.black,
                ),
                title: Text('Cancela este pedido'),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 15),
                width: double.infinity,
                height: 100,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Politica de cancelacion',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Se cobrará una tarifa de cancelación por la cancelación. Consulte la política de cancelación para obtener más detalles.',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          //URL挿入する。url_launcherパッケージ
                          'Sigue leyendo',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 30,
            thickness: 10,
          ),
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 10, left: 15, bottom: 5),
                  color: Colors.transparent,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Detalles del pedido',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              const Divider(
                height: 15,
                indent: 15,
                endIndent: 15,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                color: Colors.transparent,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Producto',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Producto',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'やさい',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Precio del producto',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '100.000 Gs.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.mode_edit,
                  color: Colors.black,
                ),
                title: Text('Modifica el producto',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Producto('やさい')),
                  );
                },
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                color: Colors.transparent,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Pago',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Costo de delivery',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '25.000 Gs.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '¿Quien paga delivery?',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Destinatario',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(15),
                  color: Colors.transparent,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'asigar te paga 100.000 Gs.',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'asigar cobra 125.000 Gs. al cliente',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.mode_edit,
                  color: Colors.black,
                ),
                title: Text('Modifica el pago',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Producto('やさい')),
                  );
                },
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                color: Colors.transparent,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Destinatario',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 150,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Text(
                      'Nombre',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Tanaka',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Numero de telefono',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '992915064',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.mode_edit,
                  color: Colors.black,
                ),
                title: Text('Modifica el info del destinatario',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Producto('やさい')),
                  );
                },
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                color: Colors.transparent,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Metodo de entretga',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Vehiculo',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Auto',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Comida',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'No',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Cool-bin',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'No',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Notas de entrega',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Nro de casa es 123',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.mode_edit,
                  color: Colors.black,
                ),
                title: Text('Modifica el producto',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Producto('やさい')),
                  );
                },
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                color: Colors.transparent,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Remitente',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 150,
                      width: double.infinity,
                      color: Colors.red,
                    ),
                    Text(
                      'Nombre',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Yamada',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Numero de telefono',
                      style: TextStyle(
                          height: 3,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '991473390',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.mode_edit,
                  color: Colors.black,
                ),
                title: Text('Modifica el info del remitente',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                minLeadingWidth: 10,
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Producto('やさい')),
                  );
                },
              ),
              const Divider(
                height: 3,
                indent: 15,
                endIndent: 15,
              ),
            ],
          )
        ]));
  }
}
