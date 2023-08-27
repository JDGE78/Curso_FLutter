import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LanguajeItem extends StatelessWidget{

  final String nombre;
  final int voto;
  final String imagen;
  final QueryDocumentSnapshot _snapshot;

  LanguajeItem(this._snapshot):
      nombre = _snapshot.get('nombre') as String,
      voto  = _snapshot.get('voto') as int,
      imagen = _snapshot.get('imagen') as String;

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: Image.asset('assets/images/$imagen'),
      title: Text(nombre),
      subtitle: Text('Número de votos: $voto'),
    );

  }

}