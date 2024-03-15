import 'package:mastermind/v2_oop/values.dart';

class ResultCombination {
  final int _blacks;
  final int _whites;

  ResultCombination(int blacks, int whites)
      : _blacks = blacks,
        _whites = whites;

  bool isCorrect() => _blacks == Values.combinationLength;

  int getBlacks() => _blacks;
  int getWhites() => _whites;
}
