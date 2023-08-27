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
      title: 'DISMISSIBLE ejemplos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DISMISSIBLE HEROES App'),
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
      body: ListView.builder(
          itemCount: _heroes.length,
          itemBuilder: (context, index) {
            final item = _heroes[index];
            return Dismissible(
              direction: DismissDirection.endToStart,
              key: Key(item.nombre),
              background: Container(
                child: Icon(
                  Icons.delete,
                  size: 40,
                  color: Colors.white,
                ),
                color: Colors.red,
              ),
              onDismissed: (direction){
                setState(() {
                  _heroes.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('${item.nombre} ha sido borrado')
                    ),
                  );
                });
              },
              child: Card(
                elevation: 2,
                color: Colors.black12,

                child: ListTile(
                  title: Text(
                    '${item.nombre}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    '${item.categoria}',
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              '${item.nombre}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 20,
                              ),
                            ),
                            content: item.imagen,
                          );
                        }
                    );
                  },

                ),
              ),
            );
          }

      ),
    );
  }
}


