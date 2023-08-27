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
      title: 'ROTACION LOGO Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ROTACION DE LOGO'),
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
  late final Animation<double> _tween;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3)
    )..repeat();
    _tween = Tween<double>(
      begin: 0,
      end: 2 * math.pi
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
       child:  RotatingLogo(controller: _tween)
    );
}

}