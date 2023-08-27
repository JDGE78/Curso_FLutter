import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButtonWidget extends StatelessWidget{

  CustomFloatingActionButtonWidget();

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: (){
            showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Añadir lenguaje'),
                    content: TextField(
                      controller: _controller,
                    ),
                  actions: [
                    TextButton(
                        child: Text('Crear'),
                        onPressed: () async{
                          final nombre = _controller.text;
                          _controller.clear(); //vaciar variable

                          FirebaseFirestore
                          .instance
                          .collection('lenguajes')
                          .add({
                            'imagen' : "c.png",
                            'voto' : 5,
                            'nombre' : nombre
                          });
                        Navigator.of(context).pop(); //Cierre de ventana
                        },
                    )
                  ],
                  );
                });
          },

    );

  }
}