import 'package:descarga_archivos/providers/progress.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DownloadWidget extends StatelessWidget{
  final String url = 'https://www.pir.es/cuadernillosexpir2023/v4.pdf';
  const DownloadWidget();

  @override
  Widget build (BuildContext context){
    return Center(
      child: Consumer<DownloadProgress>(
        builder: (context, status,_){
          var progress = status.progress.toStringAsFixed(2);
          return ElevatedButton(
              onPressed: () => status.start(url: url, filenamePath: 'pdfprueba1.pdf'),
              child: Text ('${progress}'));
        },
      ),
    );
  }
}