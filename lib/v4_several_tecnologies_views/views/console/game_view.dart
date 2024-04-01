import 'package:mastermind/v4_several_tecnologies_views/views/console/board_view.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/console/title_view.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/game_view_interface.dart';

class GameView extends GameViewInterface {
  GameView() : super(TitleView(), BoardView());
}
