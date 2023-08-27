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
      title: 'Simple dialog App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'prueba SIMPLE DIALOG Home Page'),
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

  String _opcion = "Ninguna";

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
            ElevatedButton(
                onPressed: _elegirOpcion,
                child: Text("Abrir Simple Dialog"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent,textStyle: TextStyle(
                  color: Colors.white
                ) ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            Text("La eleccion es ", style:  TextStyle(color: Colors.green, fontSize: 20),),
            Padding(padding: EdgeInsets.all(15)),
            Text("$_opcion",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

  Future<void> _elegirOpcion() async{
    switch(
      await showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Text("Selecciona una opcion"),
              children: [
                SimpleDialogOption(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.directions_car),
                      Text("Cochazo")
                    ],
                  ),
                  onPressed: (){Navigator.pop(context, ListaOpciones.Coche); }
                ),
                SimpleDialogOption(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.airplanemode_active),
                      Text("Avion")
                    ],
                  ),
                  onPressed: (){Navigator.pop(context, ListaOpciones.Avion); }
                ),
                SimpleDialogOption(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.directions_boat),
                      Text("Barco"),
                    ],
                  ),
                  onPressed: (){Navigator.pop(context, ListaOpciones.Barco); }
                )
              ],
            );
          }
      )

    ){
      case ListaOpciones.Coche:
        _opcionElegida("Coche");
        break;
      case ListaOpciones.Avion:
        _opcionElegida("Avion");
        break;
      case ListaOpciones.Barco:
        _opcionElegida("Barco");
        break;


    }


  }

  void _opcionElegida (String opcion){
    setState(() {_opcion = opcion;});


  }
}



enum ListaOpciones{
  Coche,
  Avion,
  Barco

}