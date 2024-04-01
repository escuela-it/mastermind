import 'package:mastermind/utils/values.dart';
import 'package:mastermind/v2_oop/console_view.dart';
import 'package:mastermind/v2_oop/result_combination.dart';
import 'package:mastermind/v2_oop/secret_combination.dart';

class Game {
  final ConsoleView _consoleView;
  final SecretCombination _secretCombination;
  final List<String> _proposedCombinations;
  final List<ResultCombination> _resultCombinations;
  int _attemp;

  Game()
      : _consoleView = ConsoleView(),
        _secretCombination = SecretCombination(),
        _proposedCombinations = [],
        _resultCombinations = [],
        _attemp = 0;

  void play() {
    _consoleView.showWellcome();

    do {
      _consoleView.showAttemps(_attemp);
      _consoleView.showResults(_proposedCombinations, _resultCombinations);
      _playAttemp();
    } while (!_win() && !_completeAttemps());

    _consoleView.showComplete(_attemp < Values.totalAttemps, _secretCombination.get());
  }

  void _playAttemp() {
    final proposal = _consoleView.askProposedCombination();
    _proposedCombinations.add(proposal);

    final blacks = _secretCombination.calculateBlacks(proposal);
    final whites = _secretCombination.calculateWhites(proposal);
    _resultCombinations.add(ResultCombination(blacks, whites));

    _attemp++;
  }

  bool _win() => _resultCombinations[_resultCombinations.length - 1].isCorrect();

  bool _completeAttemps() => _attemp >= Values.totalAttemps;
}
