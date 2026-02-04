import 'dart:ui';
import 'package:flutter/foundation.dart';


class LanguageProvider extends ChangeNotifier {
  Locale _currentLocal = Locale('en');
  final List<Locale> _supportedLocales = [Locale('en'), Locale('bn')];

  List<Locale> get supportedLocales => _supportedLocales;

  Locale get currentLocal => _currentLocal;

  void changeLocale(Locale locale) {
    _currentLocal = locale;
    notifyListeners();
  }
}
