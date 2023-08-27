import 'package:flutter/cupertino.dart';
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
      title: 'Radio ejemplos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Radio App'),
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
  bool _opcion = false;
  RadioOpciones _opcionRadio = RadioOpciones.Avion;
  Icon _iconOpcionRadio = Icon(Icons.airplanemode_active);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Selecciona la opción: ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
            const Divider(),
            const Text('Switch',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                    value: _opcion,
                    activeColor: Colors.green,
                    activeTrackColor: Colors.green[200],
                    inactiveTrackColor: Colors.red[200],
                    inactiveThumbColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        _opcion = value;
                      });
                    }),
                CupertinoSwitch(
                    value: _opcion,
                    activeColor: Colors.green,
                    trackColor: Colors.red,
                    thumbColor: Colors.brown,
                    onChanged: (value) {
                      setState(() {
                        _opcion = value;
                      });
                    }),
              ],
            ),
            Text(_opcion ? 'Activado' : 'Desactivado'),
            Divider(),
            const Text(
              'Radio',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                    value: RadioOpciones.Coche,
                    groupValue: _opcionRadio,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        _opcionRadio = RadioOpciones.Coche;
                        _iconOpcionRadio = const Icon(Icons.directions_car);
                      });
                    }),
                Text('Coche',
                    style: RadioOpciones.Coche == _opcionRadio
                        ? const TextStyle(color: Colors.purple)
                        : const TextStyle()),
                Radio(
                    value: RadioOpciones.Avion,
                    activeColor: Colors.green,
                    groupValue: _opcionRadio,
                    onChanged: (value) {
                      setState(() {
                        _opcionRadio = RadioOpciones.Avion;
                        _iconOpcionRadio =
                            const Icon(Icons.airplane_ticket, size: 40);
                      });
                    }),
                Text('Avion',
                    style: RadioOpciones.Avion == _opcionRadio
                        ? const TextStyle(color: Colors.green)
                        : const TextStyle()),
                Radio(
                    value: RadioOpciones.Barco,
                    activeColor: Colors.green,
                    groupValue: _opcionRadio,
                    onChanged: (value) {
                      setState(() {
                        _opcionRadio = RadioOpciones.Barco;
                        _iconOpcionRadio = const Icon(Icons.directions_boat);
                      });
                    }),
                Text('Barco',
                    style: RadioOpciones.Barco == _opcionRadio
                        ? const TextStyle(color: Colors.lightBlueAccent)
                        : const TextStyle()),
              ],
            ),
            _iconOpcionRadio
          ],
        ),
      ),
    );
  }
}

enum RadioOpciones { Coche, Avion, Barco }
