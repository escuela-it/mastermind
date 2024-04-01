import 'dart:math';

import 'package:mastermind/utils/values.dart';

class SecretCombination {
  String _secretCombination;

  SecretCombination() : _secretCombination = '' {
    random();
  }

  void random() {
    String string = '';
    for (var i = 0; i < Values.combinationLength; i++) {
      final char = Values.colors[Random().nextInt(6)];
      if (string.contains(char)) {
        i--;
      } else {
        string += char;
      }
    }
    _secretCombination = string;
  }

  int calculateBlacks(String proposedCombination) {
    assert(proposedCombination.length == Values.combinationLength);
    int counter = 0;
    for (var i = 0; i < proposedCombination.length; i++) {
      if (proposedCombination[i] == _secretCombination[i]) counter++;
    }
    return counter;
  }

  int calculateWhites(String proposedCombination) {
    assert(proposedCombination.length == Values.combinationLength);
    int counter = 0;
    List<String> repeated = [];
    for (var i = 0; i < proposedCombination.length; i++) {
      if (!repeated.contains(proposedCombination[i]) && _secretCombination.contains(proposedCombination[i])) {
        counter++;
        repeated.add(proposedCombination[i]);
      }
    }
    return counter;
  }

  String get() => _secretCombination;
}
