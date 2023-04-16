import 'package:flutter/material.dart';

class CounterProviderState extends ChangeNotifier {
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
