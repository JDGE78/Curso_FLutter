import 'package:animaciones_implicitas/providers/contador_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedContainedWidget2 extends StatelessWidget{
  const AnimatedContainedWidget2();

  @override
  Widget build (BuildContext context){

    return Consumer<ContadorProvider>(
      builder: (context,status,_){
          return AnimatedContainer(
            height: 70,
            width: 70,
            color: status.counter % 2 == 0
                ? Colors.red
                : Colors.lime,
            //alignment: Alignment.center,

            duration: const Duration(seconds: 6),
            curve: Curves.bounceIn,
          );
      },
    );
  }

}