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
  Icon _iconOpcionRadio = const Icon(Icons.airplanemode_active);

  final Map _opcionCheckBox = {
    RadioOpciones.Coche: false,
    RadioOpciones.Avion: false,
    RadioOpciones.Barco: false,
  };

  double _opcionSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              /* CupertinoSwitch(
                  value: _opcion,
                  activeColor: Colors.green,
                  trackColor: Colors.red,
                  thumbColor: Colors.brown,
                  onChanged: (value) {
                    setState(() {
                      _opcion = value;
                    });
                  }),*/
            ],
          ),
          Text(_opcion ? 'Activado' : 'Desactivado'),
          const Divider(),
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
          _iconOpcionRadio,
          const Divider(),
          const Text(
            'Checkbox',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Checkbox(
                value: _opcionCheckBox[RadioOpciones.Coche],
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _opcionCheckBox[RadioOpciones.Coche] = value;
                  });
                }),
            Text(
              'Coche',
              style: _opcionCheckBox[RadioOpciones.Coche]
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(),
            ),
            Checkbox(
                value: _opcionCheckBox[RadioOpciones.Avion],
                onChanged: (value) {
                  setState(() {
                    _opcionCheckBox[RadioOpciones.Avion] = value;
                  });
                }),
            Text(
              'Avion',
              style: _opcionCheckBox[RadioOpciones.Avion]
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(),
            ),
            Checkbox(
                value: _opcionCheckBox[RadioOpciones.Barco],
                onChanged: (value) {
                  setState(() {
                    _opcionCheckBox[RadioOpciones.Barco] = value;
                  });
                }),
            Text(
              'Barco',
              style: _opcionCheckBox[RadioOpciones.Barco]
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_car,
                  color: _opcionCheckBox[RadioOpciones.Coche]
                      ? Colors.green
                      : Colors.grey),
              Icon(Icons.airplanemode_active,
                  color: _opcionCheckBox[RadioOpciones.Avion]
                      ? Colors.green
                      : Colors.grey),
              Icon(Icons.directions_boat,
                  color: _opcionCheckBox[RadioOpciones.Barco]
                      ? Colors.green
                      : Colors.grey)
            ],
          ),
          const Divider(),
          const Text(
            'Slider',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Slider(
              value: _opcionSlider,
              label: '$_opcionSlider',
              activeColor: Colors.green,
              thumbColor: Colors.green[800],
              inactiveColor: Colors.green[100],
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  _opcionSlider = value;
                });
              }),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: CupertinoSlider(
                value: _opcionSlider,
                min: 0,
                max: 10,
                divisions: 10,
                activeColor: Colors.green,
                thumbColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _opcionSlider = value;
                  });
                }),
          ),
          Text(
            'El valor del Slider es: $_opcionSlider',
            style: _opcionSlider < 5
                ? const TextStyle(color: Colors.red)
                : const TextStyle(color: Colors.green),
          ),
        ]),
      ),
    );
  }
}

enum RadioOpciones { Coche, Avion, Barco }
