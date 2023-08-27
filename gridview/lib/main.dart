import 'package:flutter/gestures.dart';

import 'heroes.dart';
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
      title: 'HEROES ejemplos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'HEROES App'),
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

  List _heroes = [
    Heroes('Batman','DC Comics',Image.asset('Assets/Images/bat.jpg')),
    Heroes('Capitán América','Marvel',Image.asset('Assets/Images/CAmerica.png')),
    Heroes('Catwoman','DC Comics',Image.asset('Assets/Images/catw.png')),
    Heroes('Flash','DC Comics',Image.asset('Assets/Images/flash.jpg')),
    Heroes('Iron Man','Marvel',Image.asset('Assets/Images/iron.jpg')),
    Heroes('Robin','DC Comics',Image.asset('Assets/Images/robin.png')),
    Heroes('Spiderman','Marvel',Image.asset('Assets/Images/spider.png')),
    Heroes('Superman','DC Comics',Image.asset('Assets/Images/super.png')),
    Heroes('Thor','Marvel',Image.asset('Assets/Images/thor.png')),
    Heroes('Wonder Woman','DC Comics',Image.asset('Assets/Images/WWoman.png')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
     body: GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
         ),
         itemCount: _heroes.length,
         itemBuilder: (context, index){
           final item = _heroes.elementAt(index);
           return Card(
             color: Colors.redAccent,
              elevation: 5,
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     child: item.imagen,
                     height: 50,
                   ),

                   Divider(color: Colors.white60),
                   Text(
                     '${item.nombre}',
                     style: TextStyle(
                         color : Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 15
                     ),),
                   Text(
                     '${item.categoria}',
                     style: TextStyle(color: Colors.white60),
                   ),
                 ],
               ),
             ),
           );/*GridTileBar(
             backgroundColor: Colors.orangeAccent,
             title:  Container(
               child: item.imagen,
             ),
              subtitle:Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
             '${item.nombre}',
             style: TextStyle(
                   color : Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 20
             ),),
              ),
           );*/
         })
    );
  }
}


