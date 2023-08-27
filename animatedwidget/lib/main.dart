import 'package:animatedwidget/widgets/rotatinglogo.dart';
import 'package:flutter/material.dart';

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

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3)
    )..repeat();
  }
  @override
  void  dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Center(
       child:  RotatingLogo(controller: _controller)
    );
}

}