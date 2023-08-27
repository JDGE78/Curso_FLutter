import 'package:flutter/material.dart';
import 'package:navegacion_forms/pantalla2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Pantalla 1'),
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
  int _counter = 0;
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
             Text(widget.title,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.bold,
                  color: Colors.brown),
            ),
             const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context)=>
                    Pantalla2(title: "Pantallaca 2",))
                    );
                },
                child: Text("Cambiar a pantalla 2"),
            )

          ],
        ),
      ),

      );

  }
}
