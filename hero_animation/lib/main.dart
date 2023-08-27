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
      body: Center(
        child: Hero(
          tag: 'Flutter Logo',
          child: GestureDetector(
              child: const FlutterLogo(
                size: 100,
              ),
            onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return Container(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              child: const FlutterLogo(size: 300),
                              onTap:(){
                              Navigator.of(context).pop();

                        }),
                          );
                      }
                    )
                );
            },

          ),
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

