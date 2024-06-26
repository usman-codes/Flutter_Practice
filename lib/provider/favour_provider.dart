import 'package:flutter/foundation.dart';

class favour_provider with ChangeNotifier {
  List<int> _selecteditem = [];
  List<int> get selecteditem => _selecteditem;

  void additem(int value) {
    _selecteditem.add(value);
    notifyListeners();
  }

  void removeitem(int value) {
    _selecteditem.remove(value);
    notifyListeners();
  }
}
