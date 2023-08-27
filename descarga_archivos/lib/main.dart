import 'package:descarga_archivos/providers/progress.dart';
import 'package:descarga_archivos/widgets/downloadwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


// NOTA: EN PRINCIPIO PARECE QUE ES EN MOVIL REAL, NO EMULADIR NI WEB
void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider<DownloadProgress>(
        create: (_) => DownloadProgress(),
    child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Descarga PDF'),
    ),
    body: const Center(
      child: DownloadWidget(),

    ),

    ),

    ),
    );
  }

}



