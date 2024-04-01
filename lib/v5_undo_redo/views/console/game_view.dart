import 'package:mastermind/v5_undo_redo/controllers/reset_controller.dart';
import 'package:mastermind/v5_undo_redo/views/console/board_view.dart';
import 'package:mastermind/v5_undo_redo/views/console/title_view.dart';
import 'package:mastermind/v5_undo_redo/views/interfaces/game_view_interface.dart';

class GameView extends GameViewInterface {
  GameView(
    ResetController resetController,
    TitleView titleView,
    BoardView boardView,
  ) : super(
          resetController,
          titleView,
          boardView,
        );
}
