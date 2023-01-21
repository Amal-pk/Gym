import 'package:flutter/material.dart';

class CategoryController extends ChangeNotifier {
  bool check = false;

  void checking() {
    check = !check;
    notifyListeners();
  }
}
