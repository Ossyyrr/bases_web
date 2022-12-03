import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
