import 'package:flutter/cupertino.dart';

class MainNavHolderProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void backToHome() {
    updateIndex(0);
  }

  void moveToCategory() {
    updateIndex(1);
  }
}
