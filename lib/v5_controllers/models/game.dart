import 'package:mastermind/v5_controllers/models/result_combination.dart';
import 'package:mastermind/v5_controllers/models/secret_combination.dart';
import 'package:mastermind/utils/values.dart';

class Game {
  final SecretCombination _secretCombination;
  List<ResultCombination> _resultCombinations;
  List<String> _proposedCombinations;
  int _attemp;

  Game()
      : _secretCombination = SecretCombination(),
        _resultCombinations = [],
        _proposedCombinations = [],
        _attemp = 0;

  bool isFinished() => _proposedCombinations.length > Values.totalAttemps || _resultCombinations.last.isCorrect();

  String getProposedCombination(int i) => _proposedCombinations[i];

  ResultCombination getResultCombination(int i) => _resultCombinations[i];

  void addProposedCombiantion(String proposedCombination) => _proposedCombinations.add(proposedCombination);

  void addResultCombination() {
    assert(_proposedCombinations.isNotEmpty);
    final blacks = _secretCombination.calculateBlacks(_proposedCombinations.last);
    final whites = _secretCombination.calculateWhites(_proposedCombinations.last);
    _resultCombinations.add(ResultCombination(blacks, whites - blacks));
  }

  void incrementAttemp() => _attemp++;

  int getAttemp() => _attemp;

  int proposedCombinationsLength() => _proposedCombinations.length;

  void reset() {
    _secretCombination.random();
    _resultCombinations = [];
    _proposedCombinations = [];
    _attemp = 0;
  }

  bool isWin() => _resultCombinations.last.isCorrect();

  String getSecretCombination() => _secretCombination.get();
}
