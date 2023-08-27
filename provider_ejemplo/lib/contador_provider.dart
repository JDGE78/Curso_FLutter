import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContadorProvider with ChangeNotifier{

  int _counter;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
  }

  ContadorProvider(this._counter);

  void incremento(){
    _counter++;
    notifyListeners();
  }




}