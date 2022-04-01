import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Fechayhora extends StatefulWidget {
  const Fechayhora(this.name);
  final String name;

  @override
  State<Fechayhora> createState() => _FechayhoraState();
}

class _FechayhoraState extends State<Fechayhora> {
  var _labelText = 'Fecha';
  Future<void> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue, // ヘッダー背景色
              onPrimary: Colors.black, // ヘッダーテキストカラー
              onSurface: Colors.black, // カレンダーのテキストカラー
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.blue, // ボタンのテキストカラー
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (selected != null) {
      setState(() {
        _labelText = DateFormat.Md().format(selected);
      });
    }
  }

  TimeOfDay? selectedTime;

  Future _pickTime(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 09, minute: 00);
    //TimePickerを呼び出す
    final newTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              // change the border color
              primary: Colors.blue,
              // change the text color
              onSurface: Colors.black,
            ),
            // button colors
            buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.light(
                primary: Colors.black,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    //nullチェック
    if (newTime != null) {
      //変数に選択した時刻を格納
      setState(() => selectedTime = newTime);
    } else {
      return;
    }
  }

  TimeOfDay? selectedTime2;

  Future _pickTime2(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 09, minute: 00);
    //TimePickerを呼び出す
    final newTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              // change the border color
              primary: Colors.blue,
              // change the text color
              onSurface: Colors.black,
            ),
            // button colors
            buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.light(
                primary: Colors.black,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    //nullチェック
    if (newTime != null) {
      //変数に選択した時刻を格納
      setState(() => selectedTime2 = newTime);
    } else {
      return;
    }
  }

  TimeOfDay? selectedTime3;

  Future _pickTime3(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 09, minute: 00);
    //TimePickerを呼び出す
    final newTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              // change the border color
              primary: Colors.blue,
              // change the text color
              onSurface: Colors.black,
            ),
            // button colors
            buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.light(
                primary: Colors.black,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    //nullチェック
    if (newTime != null) {
      //変数に選択した時刻を格納
      setState(() => selectedTime3 = newTime);
    } else {
      return;
    }
  }

  TimeOfDay? selectedTime4;

  Future _pickTime4(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 09, minute: 00);
    //TimePickerを呼び出す
    final newTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              // change the border color
              primary: Colors.blue,
              // change the text color
              onSurface: Colors.black,
            ),
            // button colors
            buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.light(
                primary: Colors.black,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    //nullチェック
    if (newTime != null) {
      //変数に選択した時刻を格納
      setState(() => selectedTime4 = newTime);
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modifica Fecha y Hora'),
        foregroundColor: Colors.black,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 18),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: const [
                Text(
                  'Detalles de la fecha y hora',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(outputFormat.format(now)),

                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          _labelText,
                          style: const TextStyle(fontSize: 18),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.date_range,
                            color: Colors.black,
                          ),
                          onPressed: () => {
                            _selectDate(context),
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const Text(
                  'Recogida',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () => _pickTime(context),
                        child: Text(
                          selectedTime != null
                              ? '${selectedTime!.hour}:${selectedTime!.minute}'
                              : 'Time',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      height: 50,
                      width: 10,
                      child: const Text('~'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () => _pickTime2(context),
                        child: Text(
                          selectedTime2 != null
                              ? '${selectedTime2!.hour}:${selectedTime2!.minute}'
                              : 'Time',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Entrega',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () => _pickTime3(context),
                        child: Text(
                          selectedTime3 != null
                              ? '${selectedTime3!.hour}:${selectedTime3!.minute}'
                              : 'Time',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      height: 50,
                      width: 10,
                      child: const Text('~'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () => _pickTime4(context),
                        child: Text(
                          selectedTime4 != null
                              ? '${selectedTime4!.hour}:${selectedTime4!.minute}'
                              : 'Time',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                      ),
                      child: const Text(
                        'Cancela',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                      ),
                      child: const Text(
                        'Guarda',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
