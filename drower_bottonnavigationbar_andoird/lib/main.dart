//import 'package:flutter/cupertino.dart';
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
      home: MyHome(title: "Scaffold Inicio"),
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
   int _elementoItem=0;
  String TextoItem="cero patatero";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),

      drawer: Drawer( //MENU LATERAL MOLON
        child: Column(
          children: const [
            DrawerHeader(
              child: Text('Menu Drawer',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
            Text("Enlace 1"),
            Text("Enlace 2"),
            Text("Enlace 3"),
          ],
        ),
      ),

      body: Center(
        child: Column(
          children: [
            Text(TextoItem,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          ]
        ),
      ) ,



      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple,

          items: const[
            BottomNavigationBarItem(
                icon: Icon(Icons.home,
                color: Colors.white,
                ),
              label: "Home"),

            BottomNavigationBarItem(
                icon: Icon(Icons.cabin,
                  color: Colors.white,
                ),
                label: "Cabin"),

            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle,
                  color: Colors.white,
                ),
                label: "User"),
          ],
          currentIndex: _elementoItem,
        onTap: _itemPulsado,
      ),

    );

  }

  void _itemPulsado(int i) {
    setState(() {
      _elementoItem = i;
      switch(i){
        case 0:
          TextoItem= "$_elementoItem : Cero patatero";
          break;
        case 1 :
          TextoItem= "$_elementoItem : Uno no hay ninguno";
          break;
        case 2:
          TextoItem= "$_elementoItem : dos...no hay rima";
          break;
      }


    });
  }



}//fin
