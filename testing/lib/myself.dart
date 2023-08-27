import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySelf extends StatelessWidget{

  final int age;
  final String name;

  const MySelf(this.age,this.name);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Text('$age'),
            Text('$name'),

          ],
        ),
      ),
    );
  }

}