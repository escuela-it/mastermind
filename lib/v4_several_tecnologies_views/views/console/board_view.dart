import 'package:mastermind/v4_several_tecnologies_views/models/game.dart';
import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/console/ask_combination_view.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/console/attemp_view.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/console/finish_view.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/console/proposed_combination_view.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/board_view_interface.dart';

class BoardView extends BoardViewInterface {
  BoardView()
      : super(
          AttempView(),
          ProposedCombinationView(),
          AskCombinationView(),
          FinishView(),
        );

  @override
  void draw(Game game) {
    do {
      Console.write('');
      attempViewInterface.draw(game.getAttemp());
      for (var i = 0; i < game.proposedCombinationsLength(); i++) {
        proposedCombinationViewInterface.draw(game.getProposedCombination(i), game.getResultCombination(i));
      }
      Console.write('');
      askCombinationViewInterface.interact(game);
      game.addResultCombination();
      game.incrementAttemp();
    } while (!game.isFinished());
    finishViewInterface.draw(game.isWin(), game.getSecretCombination());
  }
}
