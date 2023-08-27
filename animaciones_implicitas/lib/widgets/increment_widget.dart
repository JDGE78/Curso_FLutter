import 'package:animaciones_implicitas/providers/contador_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementWidget extends StatelessWidget{
  const IncrementWidget({super.key});

  @override
  Widget build (BuildContext context){

    return Consumer<ContadorProvider>(
      builder: (context  ,status,_){
        return FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              status.incremento();
            });
      },
    );
  }

}