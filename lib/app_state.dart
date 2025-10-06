import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _quoteText = '';
  String get quoteText => _quoteText;
  set quoteText(String value) {
    _quoteText = value;
  }

  String _quoteAuthor = '';
  String get quoteAuthor => _quoteAuthor;
  set quoteAuthor(String value) {
    _quoteAuthor = value;
  }
}
