import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  double value = 0;

  increament() {
    value++;
    notifyListeners();
  }

  decreament() {
    value--;
    notifyListeners();
  }
}
