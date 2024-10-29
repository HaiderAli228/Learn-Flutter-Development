import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProviderClass with ChangeNotifier {
  bool isLogin = true;

  void login() {
    isLogin = !isLogin;
    notifyListeners();
  }

  List<bool> favoriteStates = List<bool>.filled(10, true);

  void toggleFavorite(int index) {
    favoriteStates[index] = !favoriteStates[index];
    notifyListeners();
  }

  DateTime currentTime = DateTime.now();
  String formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());

  void getDate() {
    currentTime = DateTime.now();
    formattedTime = DateFormat('HH:mm:ss').format(currentTime);
    notifyListeners();
  }

  num count = 0;

  counting() {
    count++;
    notifyListeners();
  }

  var valueIS = 1.0;
  updateValue(val) {
    valueIS = val;
    notifyListeners();
  }
}
