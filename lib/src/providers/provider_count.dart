

import 'package:flutter/material.dart';

class ProviderCounter with ChangeNotifier {

  var _counter = 0;

  int get getCounter {
   return  _counter;
  }

  void incrementCounter() {
    _counter += 1;
    notifyListeners();
  }

  void decrementCounter() {
    _counter -= 1;
    notifyListeners();
  }

}