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

  String _url =
      'https://app.chargeautomation.com/pre-checkin/2047710?signature=5b5e79587992caee0b8babae944e02f3cb6c635d4c60a6777735e6b8f94df72f';
  String get url => _url;
  set url(String value) {
    _url = value;
  }

  bool _enable = false;
  bool get enable => _enable;
  set enable(bool value) {
    _enable = value;
  }
}
