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
      title: 'snackbar Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'pop up Home Page'),
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
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Ejemplo de texto en SanckBar"),
                    duration: Duration(seconds: 4),
                    backgroundColor: Colors.red,
                    action: SnackBarAction(
                        label: "Cerrar",
                        textColor: Colors.white,
                        onPressed: (){ScaffoldMessenger.of(context).hideCurrentSnackBar();}
                  ),
                  )
                  );
                },
                child: Text("Abrir SnackBar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: TextStyle(color: Colors.white)
                ))
          ],
        ),
      ),
    );
  }

}

