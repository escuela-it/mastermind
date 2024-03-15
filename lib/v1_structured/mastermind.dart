import 'dart:math';
import 'package:mastermind/utils/console.dart';

class MasterMind {
  String _secretCombination = '';
  String _proposedCombination = '';
  final List<String> _resultsCombination = [];

  int _attemp = 0;

  final String _colors = 'rbygop';

  void play() {
    _setSecretCombination();
    _showWellcome();
    do {
      _showAttemp();
      _showResults();
      _setProposedCombination();
      _setResult();
    } while (_notFinish());

    write();
    if (_attemp == 5) {
      write('OHHHHH you lose!!!');
      write('secret combination: $_secretCombination');
    } else {
      write('YUHUUUUUUU, YOU WIN!!!');
    }
  }

  bool _notFinish() {
    if (_attemp > 9) return false;
    if (_resultsCombination[_resultsCombination.length - 1].contains('4 blacks')) return false;
    return true;
  }

  void _setSecretCombination() {
    for (var i = 0; i < 4; i++) {
      _secretCombination += _colors[Random().nextInt(6)];
    }
  }

  void _showWellcome() {
    write();
    write('----- MASTERMIND -----');
    write();
  }

  void _showAttemp() {
    write('$_attemp attemps:');
    write('xxxx');
  }

  void _showResults() {
    for (var result in _resultsCombination) {
      write(result);
    }
  }

  void _setProposedCombination() {
    String? data;
    do {
      writeInLine('propose a combination ($_colors): ');
      data = read();
    } while (!_validateData(data));
    _proposedCombination = data!;
    write();
  }

  bool _validateData(String? data) {
    return data != null && data.length == 4 && _isDataCorrect(data);
  }

  bool _isDataCorrect(String data) {
    for (int i = 0; i < data.length; i++) {
      if (!_colors.contains(data[i])) {
        return false;
      }
    }
    return true;
  }

  int _blackSuccesses() {
    int counter = 0;
    for (var i = 0; i < _proposedCombination.length; i++) {
      if (_secretCombination[i] == _proposedCombination[i]) counter++;
    }
    return counter;
  }

  int _whiteSuccesses() {
    int counter = 0;
    for (var i = 0; i < _proposedCombination.length; i++) {
      if (_secretCombination.contains(_proposedCombination[i])) counter++;
    }
    return counter;
  }

  void _setResult() {
    final blacks = _blackSuccesses();
    final whites = _whiteSuccesses() - blacks;

    _resultsCombination.add('$_proposedCombination ---> $blacks blacks, $whites whites');
    _attemp++;
  }
}
