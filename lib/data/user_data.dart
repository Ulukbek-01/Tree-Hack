import 'dart:convert';

import 'package:flutter/material.dart';

class UserData with ChangeNotifier {
  String name = 'Biniam';
  String email = 'Biniam2345@gmail.com';
  int points = 25;
  int level = 3;
  String plantImage = 'assets/images/rep_4.jpg';

  int storeCount = 3;

  void increasePoints(int amount) {
    points += amount;
    if (points > 0 && points < 10) {
      level = 1;
      plantImage = 'assets/images/rep_2.jpg';
    } else if (points >= 10 && points < 20) {
      level = 2;
      plantImage = 'assets/images/rep_3.jpg';
    } else if (points >= 20 && points < 30) {
      level = 3;
      plantImage = 'assets/images/rep_4.jpg';
    } else if (points >= 30) {
      level = 4;
      plantImage = 'assets/images/rep_5.jpg';
    }

    notifyListeners();
  }

  void decreasePoints(int amount) {
    points -= amount;
    if (points < 0) {
      points = 0;
    }

    if (points > 0 && points < 10) {
      level = 1;
      plantImage = 'assets/images/rep_2.jpg';
    } else if (points >= 10 && points < 20) {
      level = 2;
      plantImage = 'assets/images/rep_3.jpg';
    } else if (points >= 20 && points < 30) {
      level = 3;
      plantImage = 'assets/images/rep_4.jpg';
    } else if (points >= 30) {
      level = 4;
      plantImage = 'assets/images/rep_5.jpg';
    }
    notifyListeners();
  }

  void decreaseStore() {
    storeCount--;
    notifyListeners();
  }
}
