import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lenguajesdeprogramacion/widgets/conection_error_widget.dart';
import 'package:lenguajesdeprogramacion/widgets/languajes_list_widget.dart';
import 'package:lenguajesdeprogramacion/widgets/custom_floatingactionbutton_widget.dart';

void main() {
  runApp(Lenguages());
}

class Lenguages extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot){
          if (snapshot.hasError) {
            return MaterialApp(
              home: Scaffold(
                appBar: AppBar(title: Text('Lenguajes de Programacion(error)'),),
                body: const ConnectionError(),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData){
            return MaterialApp(
              home: Scaffold(
                appBar: AppBar(title: Text('Lenguajes de Programacion'),),
                body: LanguajesListWidget(),
                floatingActionButton: CustomFloatingActionButtonWidget(),
              ),
            );
          }
          return const CircularProgressIndicator();
        }
    );

  }


}
