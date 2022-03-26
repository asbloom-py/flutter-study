import 'package:flutter/material.dart';

class Fechayhora extends StatelessWidget {
  Fechayhora(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modifica Fecha y Hora'),
        foregroundColor: Colors.black,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 18),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.transparent,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  padding: EdgeInsets.only(top: 15),
                  height: 80,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text('Recogida',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(name),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 15),
                  height: 80,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text('Entrega',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(name),
                    ],
                  )),
            ]),
            Center(
                child: ElevatedButton(
              child: Text(
                'Cancelar',
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, onPrimary: Colors.black),
            )),
          ],
        ),
      ),
    );
  }
}
