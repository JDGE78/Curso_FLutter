import 'package:animaciones_implicitas/providers/contador_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedContainedWidget extends StatelessWidget{
  const AnimatedContainedWidget();

  @override
  Widget build (BuildContext context){

    return Consumer<ContadorProvider>(
      builder: (context,status,_){
          return AnimatedContainer(
            height: status.counter,
            width: status.counter,
            color: Colors.lightBlue,
            alignment: Alignment.center,
            duration: Duration(seconds: 1),
          );
      },
    );
  }

}