import 'package:flutter/material.dart';

class Pantalla2 extends StatefulWidget {
  const Pantalla2({super.key, required this.title});

  final String title;

  @override
  State<Pantalla2> createState() => _Pantalla2State();
}

class _Pantalla2State extends State<Pantalla2> {

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
              style:  TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.bold,
                  color: Colors.brown),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: null,
              child: Text("Cambiar a pantalla 1"),
            )

          ],
        ),
      ),

    );

  }
}
