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
      duration: const Duration(seconds: 15),
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
      body:AnimatedBuilder(
          animation: _controller,
          builder: (context,child){
          final scale = 1-(_controller.value*0.5);
          final pos = 20 + (_controller.value*400);
          return Stack(
          children: [
          Transform(
          transform: Matrix4.identity()
          ..scale(scale)
          ..translate(pos,pos),
          child: child,
          ),
          const Text('¿me ves?')
          ],
      );
    },
    child: ElevatedButton(
      child: const Text('Mueveme'),
      onPressed: _mueveme,

    ),
   ),
 );

  }

  void _mueveme(){
    if (_controller.status != AnimationStatus.completed){
      _controller.reverse();
    }else{
      _controller.forward();
    }
  }
}

