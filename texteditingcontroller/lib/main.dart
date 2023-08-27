// ignore_for_file: sized_box_for_whitespace

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

  final _controller = TextEditingController();

  String _textoIntroducido = 'Ninguno';
  TextStyle style1 = const TextStyle(
      color: Colors.white
  );

  TextStyle style2 = const TextStyle(
      color: Colors.orange,
      fontWeight: FontWeight.bold
  );
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
                  children: [
                    const Text('Introduce tu texto:'),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Introduce texto',
                      ),
                      controller: _controller,
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration:const BoxDecoration(
                        color: Colors.lightBlue,
                        boxShadow: [BoxShadow(
                          color: Colors.black,
                          blurRadius: 25,
                          spreadRadius: 5,
                          offset: Offset(0,15),
                        )],
                      ),
                      //color: Colors.blue,

                      child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(10)),
                          Text(
                            '1. Texto que se esta intriduciendo en directo',
                            style: style2,
                          ),
                          Text(
                            _textoIntroducido,
                            style: style1,
                          ),
                          const Padding(padding: EdgeInsets.all(10)),

                        ],
                      ),
                    ),
                  ],
                ),
            ),

          ],

        ),
      ),

    );
  }
  @override
  void initState(){
    super.initState();
    _controller.addListener(_mostrarValorIntroducido);
    _controller.value = const TextEditingValue(text: 'Valor inicial');
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  void _mostrarValorIntroducido(){
    setState(() {
      _textoIntroducido = _controller.text;
    });

  }

}
