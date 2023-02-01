import 'package:flutter/cupertino.dart';

class CalculationProvider extends ChangeNotifier {
  // changenotifer- it notify us  when any value is change
  int number = 0;
  void increment() {
    number++;
    notifyListeners(); // use for update
  }

  void decrement() {
    number--;
    notifyListeners();
  }
}

class MultiplyProvider extends ChangeNotifier {
  int n = 0;

  void multiply() {
    n++;
    notifyListeners();
  }
}
