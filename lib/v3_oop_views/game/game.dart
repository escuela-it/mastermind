import 'package:mastermind/v3_oop_views/views/console_view.dart';
import 'package:mastermind/v3_oop_views/game/result_combination.dart';
import 'package:mastermind/v3_oop_views/game/secret_combination.dart';
import 'package:mastermind/v3_oop_views/values.dart';

class Game {
  final ConsoleView _consoleView;
  final SecretCombination _secretCombination;
  final List<ResultCombination> _resultCombinations;
  final List<String> _proposedCombinations;

  Game()
      : _consoleView = ConsoleView(),
        _secretCombination = SecretCombination(),
        _resultCombinations = [],
        _proposedCombinations = [];

  void play() {
    int attemp = 0;
    _consoleView.showWellcome();

    do {
      _consoleView.showBoard(attemp, _proposedCombinations, _resultCombinations);
      _playAttemp(_consoleView.askCombination());
      attemp++;
    } while (!_win() && attemp < Values.totalAttemps);

    _consoleView.showFinish(attemp < Values.totalAttemps, _secretCombination.get());
  }

  void _playAttemp(String proposal) {
    _proposedCombinations.add(proposal);

    final blacks = _secretCombination.calculateBlacks(proposal);
    final whites = _secretCombination.calculateWhites(proposal);
    _resultCombinations.add(ResultCombination(blacks, whites));
  }

  bool _win() => _getLastResultCombination().isCorrect();

  ResultCombination _getLastResultCombination() => _resultCombinations[_resultCombinations.length - 1];
}
