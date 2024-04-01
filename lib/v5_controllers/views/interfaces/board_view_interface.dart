import 'package:mastermind/v5_controllers/controllers/play_controller.dart';
import 'package:mastermind/v5_controllers/views/interfaces/ask_combination_view_interface.dart';
import 'package:mastermind/v5_controllers/views/interfaces/attemp_view_interface.dart';
import 'package:mastermind/v5_controllers/views/interfaces/finish_view_interface.dart';
import 'package:mastermind/v5_controllers/views/interfaces/proposed_combination_view_interface.dart';

abstract class BoardViewInterface {
  final PlayController _playController;
  final AttempViewInterface _attempViewInterface;
  final ProposedCombinationViewInterface _proposedCombinationViewInterface;
  final AskCombinationViewInterface _askCombinationViewInterface;
  final FinishViewInterface _finishViewInterface;

  PlayController get playController => _playController;
  AttempViewInterface get attempViewInterface => _attempViewInterface;
  ProposedCombinationViewInterface get proposedCombinationViewInterface => _proposedCombinationViewInterface;
  AskCombinationViewInterface get askCombinationViewInterface => _askCombinationViewInterface;
  FinishViewInterface get finishViewInterface => _finishViewInterface;

  BoardViewInterface(
    PlayController playController,
    AttempViewInterface attempViewInterface,
    ProposedCombinationViewInterface proposedCombinationViewInterface,
    AskCombinationViewInterface askCombinationViewInterface,
    FinishViewInterface finishViewInterface,
  )   : _playController = playController,
        _attempViewInterface = attempViewInterface,
        _proposedCombinationViewInterface = proposedCombinationViewInterface,
        _askCombinationViewInterface = askCombinationViewInterface,
        _finishViewInterface = finishViewInterface;

  void draw();
}
