import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class theme_provider with ChangeNotifier {
  var _thememode = ThemeMode.light;
  ThemeMode get thememode => _thememode;

  void settheme(themeMode) {
    _thememode = themeMode;
    notifyListeners();
  }
}
