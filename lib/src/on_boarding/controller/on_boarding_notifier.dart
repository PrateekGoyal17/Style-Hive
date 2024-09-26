import 'package:flutter/material.dart';

class OnBoardingNotifier with ChangeNotifier {
  int _selectedPage = 0;

  int get selectedPage => _selectedPage;

  set selectedPage(int page) {
    _selectedPage = page;
    notifyListeners();
  }
}
