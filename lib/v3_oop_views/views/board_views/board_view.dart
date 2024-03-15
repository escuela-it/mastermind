import 'package:mastermind/v3_oop_views/game/result_combination.dart';
import 'package:mastermind/v3_oop_views/views/board_views/attemps_view.dart';
import 'package:mastermind/v3_oop_views/views/board_views/result_view.dart';

class BoardView {
  final AttempsView _attempsView;
  final ResultView _resultView;

  BoardView()
      : _attempsView = AttempsView(),
        _resultView = ResultView();

  void show(int attemp, List<String> proposedCombinations, List<ResultCombination> resultCombinations) {
    _attempsView.show(attemp);
    _resultView.show(proposedCombinations, resultCombinations);
  }
}
