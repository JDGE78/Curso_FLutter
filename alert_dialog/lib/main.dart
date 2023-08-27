import 'package:flutter/cupertino.dart';
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
      title: 'Alert dialog Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Alert Dialog Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({Key? key, required this.title}): super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      barrierDismissible: false,//para impedir quitar dialog si pulsamos fuera
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Título de la Alarma"),
                          content: Text("Contenido del mensje"),
                          actions: [
                            TextButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: Text("Cerrar")
                            )
                          ],
                        );
                        }
                  );

                },
                child: Text("Abrir Alert Dialog"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: TextStyle(color: Colors.white)
                ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
              onPressed: (){
                    showDialog(barrierDismissible: false,
                    context: context,
                    builder: (BuildContext){
                  return CupertinoAlertDialog(
                    title: Text("Cupertino Titulo piojoso"),
                    content: Text("Contenido del dialogo"),
                    actions: [
                      TextButton(
                          onPressed: (){Navigator.of(context).pop();},
                          child: Text("Cerrar")
                      ),
                    ],
                  );
                 }
                );
              },
              child: Text("Abrir en Cupertino IOS"),
              style:  ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,

              ),
            ),
            )

          ],
        ),
      ),
    );
  }

}

