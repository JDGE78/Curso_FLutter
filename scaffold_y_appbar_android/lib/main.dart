import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Appbar';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyHome(title: "Scaffold Inicio"),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  Icon corazon = Icon(Icons.favorite_border, color: Colors.redAccent);
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        actions: [
          IconButton(
              onPressed: () {
                _pulsado();
              },
              icon: corazon)
        ],
      ),
    );
  }

  _pulsado() {
    setState(() {
      if (_liked = true) {
        Icon corazon = const Icon(Icons.favorite_border, color: Colors.white);
        _liked = false;
      } else {
        Icon corazon = Icon(Icons.favorite, color: Colors.white);
        _liked = true;
      }
    });
  }

  /*void _queBoton(String boton) {
    setState(() {
      switch (boton) {
        case "flo":
          botonPulsado = "Floating";
          break;
        case "ele":
          botonPulsado = "Elevated";
          break;
        case "txt":
          botonPulsado = "TextButton";
          break;
        case "ico":
          botonPulsado = "IconButton";
          break;
        case "out":
          botonPulsado = "OutLinedButton";
          break;
        case "cup":
          botonPulsado = "CupertinoButton";
          break;
      }
    });
  }*/
}//fin
