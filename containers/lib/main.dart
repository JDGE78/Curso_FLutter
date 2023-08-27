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
            Container(
              child: Text("Contenedor 1"),
              color: Colors.purpleAccent,
              margin: EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: Text("Contenedor 2"),
              color: Colors.red,
              height: 40,
              width: 40,
              margin: EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: Text("Contenedor 3"),
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              child: Text("Contenedor 4"),
              padding: EdgeInsets.all(34),
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              child: Text("Contenedor 5"),
              margin: EdgeInsets.only(bottom: 30),
              
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              padding: EdgeInsets.all(20),
            ),
            Container(
              color: Colors.black38,
              child:
              Icon(Icons.car_rental),
              padding: EdgeInsets.only(bottom: 30),
              width: 60,
              height: 60,
              alignment: Alignment.bottomRight,

            ),
          ],


        ),
      )

    );
  }
}
