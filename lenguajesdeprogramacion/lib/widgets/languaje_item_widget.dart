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
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.thumb_up),
            iconSize: 20,
              color: Colors.lightBlue,
            onPressed: _addVoto
          ),
          IconButton(
              icon: const Icon(Icons.delete),
              iconSize: 20,
              color: Colors.red,
              onPressed: (){
                showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                  title: Text('¿De verdad quieres borrar $nombre?'),
                  actions: [
                    TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancelar')),
                    TextButton(
                    onPressed:(){
                      _delLenguaje();
                      Navigator.of(context).pop();
                    },
                      child: Container(
                        child: const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Borrar'),
                        ),
                      ),
                      ),
                   ],
                  );
                  });

                }
          ),
        ],
      ),
    );

  }

  void _addVoto() {
    FirebaseFirestore
        .instance.runTransaction((transaction) async {
      final secureSnapShot = await transaction.get(_snapshot.reference);
      final currentVoto = secureSnapShot.get('voto') as int;

      transaction.update(secureSnapShot.reference, {
        "voto": currentVoto + 1
      });
    });
  }

    void _delLenguaje(){
      FirebaseFirestore
          .instance
          .collection('lenguajes')
          .doc(_snapshot.id)
          .delete();

      //PARA EDITAR
      /*FirebaseFirestore.instance.collection('lenguajes').doc(_snapshot.id).update(
          {'nombre': 'Texto nuevo'});*/

  }

}