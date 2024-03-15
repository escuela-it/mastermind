import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v3_oop_views/values.dart';

class AskView {
  String ask() {
    String? data;

    do {
      writeInLine('propose a combination (${Values.colors}): ');
      data = read();
    } while (!_isLengthDataValid(data) || !_isDataCorrect(data!));

    return data;
  }

  bool _isLengthDataValid(String? data) {
    return data != null && data.length == Values.combinationLength;
  }

  bool _isDataCorrect(String data) {
    for (int i = 0; i < data.length; i++) {
      if (!Values.colors.contains(data[i])) {
        return false;
      }
    }
    return true;
  }
}
