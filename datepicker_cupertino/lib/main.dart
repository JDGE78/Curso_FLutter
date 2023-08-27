import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fecha y hora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Fecha y hora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime _date = DateTime.now();
  var _time = TimeOfDay.now();

  get dateString => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: _displayCalendar(),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  )),
              child: const Text('Introduce fecha de nacimiento'),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'La fecha seleccionada es ',
            ),
            Text(
                _date == null
                    ? 'Ninguna fecha seleccionada'
                    : '${_date.day}/${_date.month}${_date.year}',
                // ignore: unnecessary_null_comparison
                style: _date == null
                    ? const TextStyle(color: Colors.red)
                    : const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30)),
            const Padding(padding: EdgeInsets.all(10)),
            //HORA
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: _displayTime(),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  )),
              child: const Text('Introduce hora de nacimiento'),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'La hora seleccionada es ',
            ),
            Text(
                _date == null
                    ? 'Ninguna hora seleccionada'
                    : '${_time.hour}:${_time.minute}',
                style: _date == null
                    ? const TextStyle(color: Colors.red)
                    : const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30)),
            const Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }

  Widget _displayCalendar() {
    return CupertinoDatePicker(
        initialDateTime: DateTime.now(),
        maximumDate: DateTime.now(),
        minimumDate: DateTime(2022),
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (value) {
          setState(() {
            _date = value;
          });
        });
  }

  Widget _displayTime() {
    return CupertinoDatePicker(
        initialDateTime: DateTime.now(),
        maximumDate: DateTime.now(),
        minimumDate: DateTime(2022),
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (value) {
          setState(() {
            _date = value;
          });
        });
  }
}
