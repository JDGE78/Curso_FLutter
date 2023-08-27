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
      title: 'SWITCH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SWITCH'),
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
            Text(_opcion ? 'Activado' : 'Desactivado')
          ],
        ),
      ),
    );
  }
}
