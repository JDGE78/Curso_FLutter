import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Appbar';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyHome(title: "NavigationBar iOS"),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
              "Aplicacion NavigationBar",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20
                ),
              ),
            ]
          ),
        ),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.green,
        leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        middle: Text(
            "Titulo de page",
            style: TextStyle(color: Colors.deepOrange),
        ),

        trailing: Icon(
        Icons.safety_check,
        color: Colors.white,
        ) ,

      ),
      
    );
  }

}
