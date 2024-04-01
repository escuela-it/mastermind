import 'package:mastermind/v3_separate_views/game/result_combination.dart';
import 'package:mastermind/v3_separate_views/views/finished_views/looser_view.dart';
import 'package:mastermind/v3_separate_views/views/ask_view.dart';
import 'package:mastermind/v3_separate_views/views/board_views/board_view.dart';
import 'package:mastermind/v3_separate_views/views/wellcome_view.dart';
import 'package:mastermind/v3_separate_views/views/finished_views/winner_view.dart';

class ConsoleView {
  final WellcomeView _wellcomeView;
  final BoardView _boardView;
  final AskView _askView;
  final WinnerView _winnerView;
  final LooserView _looserView;

  ConsoleView()
      : _wellcomeView = WellcomeView(),
        _boardView = BoardView(),
        _askView = AskView(),
        _winnerView = WinnerView(),
        _looserView = LooserView();

  void showWellcome() => _wellcomeView.show();

  void showBoard(int attemp, List<String> proposedCombinations, List<ResultCombination> resultCombinations) {
    _boardView.show(attemp, proposedCombinations, resultCombinations);
  }

  String askCombination() => _askView.ask();

  void showFinish(bool win, String secretCombination) {
    if (win) {
      _winnerView.show(secretCombination);
    } else {
      _looserView.show(secretCombination);
    }
  }
}
