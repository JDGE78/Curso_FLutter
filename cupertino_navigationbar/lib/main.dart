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
      home: MyHome(title: "Scaffold Inicio iOS"),
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
    return CupertinoTabScaffold(
        tabBar:CupertinoTabBar(
            backgroundColor: Colors.redAccent,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,),
              label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.verified_user, color: Colors.white,),
              label: "Cuenta"),
              BottomNavigationBarItem(icon: Icon(Icons.exit_to_app, color: Colors.white),
              label: "Exit"),
          ]
    ),
      tabBuilder:(context,index){
        switch(index){
          case 0:
            return CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(
                child: Center(
                   child: Column(
                      children: [
                        Text("$index: Inicio"),
                      ],
                    ),
                ),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [
                      Text("$index: Cuenta"),
                    ],
                  ),
                ),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [
                      Text("$index: Salida"),
                    ],
                  ),
                ),
              );
            });
          default:
            return CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [
                      Text("$index: Inicio"),
                    ],
                  ),
                ),
              );
            });
        }
     },
    );


  }

}
