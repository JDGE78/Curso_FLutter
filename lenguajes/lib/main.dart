import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lenguajes/widgets/conection_error_widget.dart';
import 'package:lenguajes/widgets/languajes_list_widget.dart';

void main() {
  runApp(LenguajesProgramacion());
}

class LenguajesProgramacion extends StatelessWidget{

  @override
  Widget build (BuildContext contect){
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot){
          if (snapshot.hasError) {
            return MaterialApp(
              home: Scaffold(
                appBar: AppBar(title: Text('Lenguajes de Programacion'),),
                body: ConnectionError(),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData){
            return MaterialApp(
              home: Scaffold(
                appBar: AppBar(title: Text('Lenguajes de Programacion'),),
                body: LanguajesListWidget(),
              ),
            );
          }
          return CircularProgressIndicator();
          }
    );

  }


}
