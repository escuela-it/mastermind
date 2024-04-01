import 'package:mastermind/v5_controllers/controllers/reset_controller.dart';
import 'package:mastermind/v5_controllers/views/console/board_view.dart';
import 'package:mastermind/v5_controllers/views/console/title_view.dart';
import 'package:mastermind/v5_controllers/views/interfaces/game_view_interface.dart';

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
