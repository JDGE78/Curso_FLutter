import 'package:bloc/control_contador.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  ControlContador _controlContador = ControlContador();


  @override
  Widget build(BuildContext context) {
    // than having to individually change instances of widgets.
    return StreamBuilder(
      stream: _controlContador.stream,
      initialData: 0,

      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title + " ${snapshot.data}"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${snapshot.data}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _controlContador.incremento,
            tooltip: 'Incremento',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      }
    );
  }
  @override
  void dispose(){
    _controlContador.dispose();
    super.dispose();
  }
}

