import 'package:flutter/material.dart';

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
              onPressed: _seleccionarFecha,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  )),
              child: const Text('Introduce fecha de nacimiento'),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: _seleccionarHora,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  )),
              child: const Text('Introduce hora de nacimiento'),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'La fecha seleccionada es ',
            ),
            Text(
              // ignore: unnecessary_null_comparison
              _date == null
                  ? 'Ninguna fecha seleccionada'
                  : '${_date.day}/${_date.month}/${_date.year}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'La hora seleccionada es ',
            ),
            Text(
              // ignore: unnecessary_null_comparison
              _time == null
                  ? 'Ninguna hora seleccionada'
                  : _time.format(context),
              style: _time == null
                  ? const TextStyle(color: Colors.red)
                  : const TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }

  Future _seleccionarFecha() async {
    DateTime? fechaSeleccionada = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    setState(() {
      if (fechaSeleccionada != null) {
        _date = fechaSeleccionada;
      }
    });
  }

  Future _seleccionarHora() async {
    TimeOfDay? horaSeleccionada =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    setState(() {
      if (horaSeleccionada != null) {
        _time = horaSeleccionada;
      }
    });
  }
}
