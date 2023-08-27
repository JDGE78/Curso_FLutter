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
      title: 'DIVIDER App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Divider Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(
                  color: Colors.redAccent,
                  indent: 40,
                  endIndent: 60,
                  thickness: 10,
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.yellowAccent,
                  child: Text("A"),
                ),
                const Divider(
                  color: Colors.redAccent,
                  indent: 40,
                  endIndent: 60,
                  thickness: 10,
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.redAccent,
                  child: Text("B"),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Text("C"),
                ),
                const Divider(
                  color: Colors.redAccent,
                  indent: 40,
                  endIndent: 60,
                  thickness: 10,
                  height: 10,
                ),

              ],

            ),
          )
        ],
      ),

    );


  }
}
