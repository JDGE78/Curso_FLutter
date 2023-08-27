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
      title: 'ANIMACION ejemplo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ANIMACION App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
  with SingleTickerProviderStateMixin{

  late final AnimationController _controller;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
        vsync: this,
    duration: Duration(seconds: 15),
    )..repeat();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
    body: Center(
      child: AnimatedBuilder(
        animation: _controller,
          builder: (context, child){
            return Transform(
                transform: Matrix4.skewY(0.1)
                ..rotateY(_controller.value *2 *math.pi),
              child: child,
            );
          },
        child: Container(
          color: Colors.cyan,
            width: 120,
            height: 60,
            child: Text(
                'giro',
                textAlign: TextAlign.center,
            ),
        ),
      ),
    ),
    );
  }
}


