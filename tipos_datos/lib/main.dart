import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Text Field Demo Home Page'),
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
      body: SingleChildScrollView( //PARA CUANDO SALGA EL TECLADO, QUE SUBA Y SE VEA LA CAJA DE TEXTO
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Formulario',
              style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Container(
                height: MediaQuery.of(context).size.height*0.7,
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
                  children: const [
                    Text('Introduce tu contraseña:'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Introduce password',
                      ),
                      obscureText: true,
                    ),

                    Text('Introduce tu datetime:'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Introduce datetime',
                      ),
                      keyboardType: TextInputType.datetime,
                    ),

                    Text('Introduce tu email:'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Introduce email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),

                    Text('Introduce multiline:'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Introduce multilinea',
                      ),
                      keyboardType: TextInputType.multiline,
                    ),

                    Text('Introduce numero:'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Introduce numero',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Introduce telefono:'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Introduce telefono',
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    Text('Introduce url:'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Introduce url',
                      ),
                      keyboardType: TextInputType.url,
                    ),

                  ],
                )
            ),
          ],

        ),
      ),

    );
  }
}
