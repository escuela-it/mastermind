import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v3_oop_views/game/game.dart';

class MasterMind {
  void play() {
    do {
      Game().play();
    } while (_isResume());
  }

  bool _isResume() {
    String result = '';
    do {
      result = Console.ask('¿otra partida (s/n)? ') ?? '';
    } while (result[0] != 's' && result[0] != "n");
    return result[0] == 's';
  }
}
