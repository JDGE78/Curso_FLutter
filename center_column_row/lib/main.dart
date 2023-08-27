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
      title: 'CENTER, FILA y COLUMNAS App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'CFC Home Page'),
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
      /*body: Center(
        widthFactor: 1,
        heightFactor: 1,
          child: Container(
            color: Colors.black38,
            child: Text("Texto en container",
            style: TextStyle(
              color: Colors.red,
              fontSize: 40)

            )
          ),*/
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.home, color: Colors.purple,),
              Icon(Icons.android, color: Colors.purple,),
              Icon(Icons.build, color: Colors.purple,),
              Icon(Icons.phone, color: Colors.purple,),
              Icon(Icons.group, color: Colors.purple,),
              Icon(Icons.headphones_rounded, color: Colors.purple,),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.home, color: Colors.pinkAccent,),
              Icon(Icons.android, color: Colors.pinkAccent,),
              Icon(Icons.build, color: Colors.pinkAccent,),
              Icon(Icons.phone, color: Colors.pinkAccent,),
              Icon(Icons.group, color: Colors.pinkAccent,),
              Icon(Icons.headphones_rounded, color: Colors.pinkAccent,),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, color: Colors.redAccent,),
              Icon(Icons.android, color: Colors.redAccent,),
              Icon(Icons.build, color: Colors.redAccent,),
              Icon(Icons.phone, color: Colors.redAccent,),
              Icon(Icons.group, color: Colors.redAccent,),
              Icon(Icons.headphones_rounded, color: Colors.redAccent,),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, color: Colors.orange,),
              Icon(Icons.android, color: Colors.orange,),
              Icon(Icons.build, color: Colors.orange,),
              Icon(Icons.phone, color: Colors.orange,),
              Icon(Icons.group, color: Colors.orange,),
              Icon(Icons.headphones_rounded, color: Colors.orange,),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Colors.blue,),
              Icon(Icons.android, color: Colors.blue,),
              Icon(Icons.build, color: Colors.blue,),
              Icon(Icons.phone, color: Colors.blue,),
              Icon(Icons.group, color: Colors.blue,),
              Icon(Icons.headphones_rounded, color: Colors.blue,),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, color: Colors.lightGreen,),
              Icon(Icons.android, color: Colors.lightGreen,),
              Icon(Icons.build, color: Colors.lightGreen,),
              Icon(Icons.phone, color: Colors.lightGreen,),
              Icon(Icons.group, color: Colors.lightGreen,),
              Icon(Icons.headphones_rounded, color: Colors.lightGreen,),
            ],
          ),
        ],
      ),

      );


  }
}
