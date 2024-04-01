import 'package:mastermind/v4_several_tecnologies_views/models/game.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/ask_combination_view_interface.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/attemp_view_interface.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/finish_view_interface.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/proposed_combination_view_interface.dart';

abstract class BoardViewInterface {
  final AttempViewInterface _attempViewInterface;
  final ProposedCombinationViewInterface _proposedCombinationViewInterface;
  final AskCombinationViewInterface _askCombinationViewInterface;
  final FinishViewInterface _finishViewInterface;

  get attempViewInterface => _attempViewInterface;
  get proposedCombinationViewInterface => _proposedCombinationViewInterface;
  get askCombinationViewInterface => _askCombinationViewInterface;
  get finishViewInterface => _finishViewInterface;

  BoardViewInterface(
    AttempViewInterface attempViewInterface,
    ProposedCombinationViewInterface proposedCombinationViewInterface,
    AskCombinationViewInterface askCombinationViewInterface,
    FinishViewInterface finishViewInterface,
  )   : _attempViewInterface = attempViewInterface,
        _proposedCombinationViewInterface = proposedCombinationViewInterface,
        _askCombinationViewInterface = askCombinationViewInterface,
        _finishViewInterface = finishViewInterface;

  void draw(Game game);
}
