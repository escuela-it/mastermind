import 'package:mastermind/v5_controllers/controllers/play_controller.dart';
import 'package:mastermind/v5_controllers/views/console/ask_combination_view.dart';
import 'package:mastermind/v5_controllers/views/console/attemp_view.dart';
import 'package:mastermind/v5_controllers/views/console/finish_view.dart';
import 'package:mastermind/v5_controllers/views/console/proposed_combination_view.dart';
import 'package:mastermind/v5_controllers/views/interfaces/board_view_interface.dart';

class BoardView extends BoardViewInterface {
  BoardView(PlayController playController)
      : super(
          playController,
          AttempView(),
          ProposedCombinationView(),
          AskCombinationView(),
          FinishView(),
        );

  @override
  void draw() => playController.play(
      attempViewInterface, proposedCombinationViewInterface, askCombinationViewInterface, finishViewInterface);
}
