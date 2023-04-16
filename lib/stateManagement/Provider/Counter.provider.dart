import 'package:flutter/material.dart';

class CounterState extends ChangeNotifier {
  int counter = 0;

  void increment() {
    ++counter;
    notifyListeners();
  }

  void decrement() {
    --counter;
    notifyListeners();
  }
}
