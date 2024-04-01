import 'package:mastermind/v5_controllers/models/game.dart';

class ResetController {
  final Game _game;
  ResetController(Game game) : _game = game;

  void reset() => _game.reset();
}