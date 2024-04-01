import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v2_oop/result_combination.dart';
import 'package:mastermind/utils/values.dart';

class ConsoleView {
  void showWellcome() {
    write();
    write('----- MASTERMIND -----');
    write();
  }

  void showAttemps(int attemp) {
    write('$attemp attemps:');
    write('xxxx');
  }

  void showResults(List<String> proposedCombinations, List<ResultCombination> resultCombinations) {
    for (var i = 0; i < proposedCombinations.length; i++) {
      final blacks = resultCombinations[i].getBlacks();
      final whites = resultCombinations[i].getWhites();
      final bwComposition = '$blacks blacks, ${whites - blacks} whites';
      write('${proposedCombinations[i]} ----> $bwComposition');
    }
  }

  void showComplete(bool win, String secretCombination) {
    if (win) {
      write('YUHUUUUUUU, YOU WIN!!!');
    } else {
      write('OHHHHH you lose!!!');
    }
    write('secret combination: $secretCombination');
  }

  String askProposedCombination() {
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
