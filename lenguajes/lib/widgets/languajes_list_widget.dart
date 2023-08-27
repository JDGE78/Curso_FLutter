import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lenguajes/widgets/conection_error_widget.dart';
import 'package:lenguajes/widgets/languaje_item_widget.dart';

class LanguajesListWidget extends StatelessWidget{

  static Stream<QuerySnapshot> getStream() =>
    FirebaseFirestore
        .instance
        .collection('lenguajes')
        .orderBy('voto')
        .snapshots();

  const LanguajesListWidget();

  @override
  Widget build(BuildContext context){
    return StreamBuilder(
        stream: getStream(),
        builder: (context,lenguajes){
          if (lenguajes.hasError) {
            return const ConnectionError();
          }
          if (lenguajes.hasData) {
            final data = lenguajes.data;

            if (data != null) {
              return ListView.builder(
                  itemExtent: 80,
                  itemCount: data.docs.length,
                  itemBuilder: (context, index) {
                    return LanguajeItem(data.docs[index]);
                  }
              );
            }
          }

          return const CircularProgressIndicator();
        }
    );


  }


  }


