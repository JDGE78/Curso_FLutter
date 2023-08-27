import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContadorProvider with ChangeNotifier{

  double _counter;

  double get counter => _counter;

  set counter(double value) {
    _counter = value;
  }

  ContadorProvider(this._counter);

  void incremento(){
    _counter= _counter + 10;
    notifyListeners();
  }




}