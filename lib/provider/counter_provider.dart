import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  CounterProvider(String base) {
    if (int.tryParse(base) != null) {
      _counter = int.parse(base);
    }
  }

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
