import 'dart:async';

class ControlContador{
  final _streamControl = StreamController<int>(); //apertura STREAMCONTROLLER

  int _contador = 0;

  Sink<int> get sink => _streamControl.sink;
  Stream<int> get stream => _streamControl.stream;

  void incremento(){
    sink.add(++_contador);
  }

  dispose()=>_streamControl.close(); //cierre STREAMCONTROLER

}