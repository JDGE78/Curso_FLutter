import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';

class DownloadProgress with ChangeNotifier{

  double _progress = 0;

  double get progress => _progress;

  void start({required String url, required String filenamePath}) async {

    _reset();

    final directories = await getExternalStorageDirectory();
    final finalPath = directories!.path + '/' + filenamePath;

    print(finalPath);

    //descarga:
    await Dio().download(url, finalPath,
      options: Options(
        headers: {
          HttpHeaders.acceptEncodingHeader: '*'
        },
      ),
      onReceiveProgress: (received, total){
        if (total != -1) {
          var pos = received/total +100;
          _updateProgress(pos);
        }
      }
    );
  }
  void _updateProgress(double valor){
    _progress = valor;
    notifyListeners();
  }

  void _reset(){
    if(progress!=0){
      _progress = 0;
      notifyListeners();
    }
  }
}