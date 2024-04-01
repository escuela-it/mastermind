import 'dart:math';

import 'package:mastermind/utils/values.dart';

class SecretCombination {
  String _combination;

  SecretCombination() : _combination = '' {
    _random();
  }

  int calculateBlacks(String string) {
    assert(string.length == Values.combinationLength);
    int counter = 0;
    for (var i = 0; i < string.length; i++) {
      if (string[i] == _combination[i]) counter++;
    }
    return counter;
  }

  int calculateWhites(String string) {
    assert(string.length == Values.combinationLength);
    int counter = 0;
    List<String> repeated = [];
    for (var i = 0; i < string.length; i++) {
      if (!repeated.contains(string[i]) && _combination.contains(string[i])) {
        counter++;
        repeated.add(string[i]);
      }
    }
    return counter;
  }

  String get() => _combination;

  void _random() {
    String string = '';
    for (var i = 0; i < Values.combinationLength; i++) {
      final char = Values.colors[Random().nextInt(6)];
      if (string.contains(char)) {
        i--;
      } else {
        string += char;
      }
    }
    _combination = string;
  }
}
