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
      title: 'CONTAINER App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'prueba CONTAINER Home Page'),
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

    List<Step> steps = [
      Step(title: Text("Caja 1"), content: Text("Contenido de la caja 1")),
      Step(title: Text("Caja 2"), content: Text("Contenido de la caja 2")),
      Step(title: Text("Caja 3"), content: Text("Contenido de la caja 3")),
      Step(title: Text("Caja 4"), content: Text("Contenido de la caja 4")),
      Step(title: Text("Caja 5"), content: Text("Contenido de la caja 5")),
    ];

    int _currentStep=0;


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
              Text("Stepper",style:  Theme.of(context).textTheme.headline5,),
              Stepper(
                steps: steps,
                currentStep: _currentStep,
                onStepContinue: _pasoSiguiente,
                onStepCancel: _pasoAnterior,
              )
            ]
          ),

        )

    );
  }

  void _pasoSiguiente(){
    setState(() {
      _currentStep++;
    });
  }
  void _pasoAnterior(){
    setState(() {
      _currentStep--;
    });
  }




}
