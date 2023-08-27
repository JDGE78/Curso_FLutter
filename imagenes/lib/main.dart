import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagenes App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Imagenes Home Page'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text("Material Icon: ", style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                    size: 30,

                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text("Cupertino Icon: ", style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    CupertinoIcons.home,
                    color: Colors.indigo,
                    size: 30,

                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text("Awesome Icon: ", style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    FontAwesomeIcons.house,
                    color: Colors.orangeAccent,
                    size: 30,

                  ),
                ],
              ),
              Row(//IMAGEN DESDE ASSETS/IMAGES (HAY QUE CREARLO)
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("Assets/Images/batman_solitude_by_garang76-d2zs9dp.jpg",
                  width: 150,
                  )
                ],
              ),
              Row(//IMAGEN DESDE ASSETS/IMAGES (HAY QUE CREARLO)
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("Assets/Images/cubierta_batman_flash_la_chapa_Deluxe_WEB.jpg",
                    width: 150,
                  )
                ],
              ),
              /*Row(//IMAGEN DESDE RED)
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://pub.dev/static/hash-ctir9elp/img/pub-dev-logo-2x.png",
                    width: 150,
                    //PARA ERROR DE CARGA DESDE CODIFO, PONER ESTO EN TERMINAL: flutter run -d edge --no-sound-null-safety --web-renderer=html
                  )
                ],
              ),*/
            ],
          )
      ),


    );

  }
}
