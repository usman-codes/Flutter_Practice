import 'package:flutter/foundation.dart';

class Countprovider with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void setcount() {
    _count++;
    notifyListeners();
  }
}
