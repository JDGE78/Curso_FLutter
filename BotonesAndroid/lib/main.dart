import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Botones';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyHome(title: "botonacos"),
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
  String botonPulsado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title!)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('El boton pulsado es '),
            Text(
              '$botonPulsado',
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              onPressed: _elevatedPulsado,
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Colors.blueAccent,
                shadowColor: Colors.blue,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            TextButton(
                onPressed: _textPulsado,
                child: Text("TextButton"),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            Padding(padding: EdgeInsets.all(20)),
            Ink(
              //para dibujar formas de colores(para el boton, en este caso)
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.brown,
              ),
              child: IconButton(
                onPressed: _iconPulsado,
                icon: Icon(Icons.access_alarm_rounded),
                color: Colors.blueAccent,
                iconSize: 30,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            OutlinedButton(
              onPressed: _outPulsado,
              child: Text(
                "OutlinedButton",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      color: Colors.black87,
                      width: 1,
                      style: BorderStyle.solid)),
            ),
            Padding(padding: EdgeInsets.all(20)),
            CupertinoButton(
              onPressed: _cuperPulsado,
              child: Text("Cupertino boton"),
              color: Colors.teal,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatPulsado,
        tooltip: "que me pulses",
        child: Icon(Icons.add, color: Colors.cyan),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _floatPulsado() {
    _queBoton("flo");
  }

  void _elevatedPulsado() {
    _queBoton("ele");
  }

  void _textPulsado() {
    _queBoton("txt");
  }

  void _iconPulsado() {
    _queBoton("ico");
  }

  void _outPulsado() {
    _queBoton("out");
  }

  void _cuperPulsado() {
    _queBoton("cup");
  }

  void _queBoton(String boton) {
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
  }
}//fin
