import 'package:mastermind/v4_oop_views/models/game.dart';
import 'package:mastermind/v4_oop_views/utils/console.dart';
import 'package:mastermind/v4_oop_views/views/ask_combination_view.dart';
import 'package:mastermind/v4_oop_views/views/attemp_view.dart';
import 'package:mastermind/v4_oop_views/views/finish_view.dart';
import 'package:mastermind/v4_oop_views/views/proposed_combination_view.dart';

class BoardView {
  final AttempView _attempView;
  final ProposedCombinationView _proposedCombinationView;
  final AskCombinationView _askCombinationView;
  final FinishView _finishView;

  BoardView()
      : _attempView = AttempView(),
        _proposedCombinationView = ProposedCombinationView(),
        _askCombinationView = AskCombinationView(),
        _finishView = FinishView();

  void draw(Game game) {
    do {
      Console.write('');
      _attempView.draw(game.getAttemp());
      for (var i = 0; i < game.proposedCombinationsLength(); i++) {
        _proposedCombinationView.draw(game.getProposedCombination(i), game.getResultCombination(i));
      }
      Console.write('');
      game.addProposedCombiantion(_askCombinationView.interact());
      game.addResultCombination();
      game.incrementAttemp();
    } while (!game.isFinished());
    _finishView.draw(game.isWin(), game.getSecretCombination());
  }
}
