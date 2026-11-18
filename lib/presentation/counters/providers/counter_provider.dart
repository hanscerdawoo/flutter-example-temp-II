import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _contador = 0;
  int get contador => _contador;
  void setContador(int value) {
    _contador = value;
    notifyListeners();
  }
}
