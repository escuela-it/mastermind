import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v5_controllers/models/game.dart';
import 'package:mastermind/v5_controllers/views/interfaces/ask_combination_view_interface.dart';
import 'package:mastermind/v5_controllers/views/interfaces/attemp_view_interface.dart';
import 'package:mastermind/v5_controllers/views/interfaces/finish_view_interface.dart';
import 'package:mastermind/v5_controllers/views/interfaces/proposed_combination_view_interface.dart';

class PlayController {
  final Game _game;
  PlayController(Game game) : _game = game;

  void play(
    AttempViewInterface attempViewInterface,
    ProposedCombinationViewInterface proposedCombinationViewInterface,
    AskCombinationViewInterface askCombinationViewInterface,
    FinishViewInterface finishViewInterface,
  ) {
    do {
      Console.write('');
      attempViewInterface.draw(_game.getAttemp());
      for (var i = 0; i < _game.proposedCombinationsLength(); i++) {
        proposedCombinationViewInterface.draw(_game.getProposedCombination(i), _game.getResultCombination(i));
      }
      Console.write('');
      askCombinationViewInterface.interact(_game);
      _game.addResultCombination();
      _game.incrementAttemp();
    } while (!_game.isFinished());
    finishViewInterface.draw(_game.isWin(), _game.getSecretCombination());
  }
}
