import 'package:animatedwidget/widgets/rotatinglogo.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ANIMATED BUTTON Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BOTON ANIMADO'),
        ),
        body: SpinnerController(),
      )
    );
  }
}

class SpinnerController extends StatefulWidget{
  const SpinnerController();

  @override
  _SpinnerControllerState createState() => _SpinnerControllerState();

}

class _SpinnerControllerState extends State<SpinnerController> with TickerProviderStateMixin{

  late final AnimationController _controller;
  late final Animation<Color?> _tween;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1)
    );
    _tween = ColorTween(
      begin:  Colors.red,
      end: Colors.black
    ).animate(_controller);
  }
  @override
  void  dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Center(
       child: AnimatedBuilder(
         animation: _tween,
         builder:  (context, child){
           return ElevatedButton(
               onPressed: _onTapButton,
               style: ElevatedButton.styleFrom(
                 backgroundColor: _tween.value
               ),
               child: child);
         },
         child: Text('Cambia el color')
       )
    );
}

void _onTapButton(){
    if (_controller.status != AnimationStatus.completed){
      _controller.forward();
    }else{
      _controller.reverse();
    }
}

}