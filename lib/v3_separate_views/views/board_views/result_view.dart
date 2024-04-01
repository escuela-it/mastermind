import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v3_separate_views/game/result_combination.dart';

class ResultView {
  void show(List<String> proposedCombinations, List<ResultCombination> resultCombinations) {
    for (var i = 0; i < proposedCombinations.length; i++) {
      final blacks = resultCombinations[i].getBlacks();
      final whites = resultCombinations[i].getWhites();
      final bwComposition = '$blacks blacks, ${whites - blacks} whites';
      write('${proposedCombinations[i]} ----> $bwComposition');
    }
  }
}
