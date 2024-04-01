import 'package:mastermind/v4_several_tecnologies_views/models/game.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/board_view_interface.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/title_view_interface.dart';

abstract class GameViewInterface {
  final TitleViewInterface _titleViewInterface;
  final BoardViewInterface _boardViewInterface;

  GameViewInterface(
    TitleViewInterface titleViewInterface,
    BoardViewInterface boardViewInterface,
  )   : _titleViewInterface = titleViewInterface,
        _boardViewInterface = boardViewInterface;

  void draw(Game game) {
    _titleViewInterface.draw();
    _boardViewInterface.draw(game);
  }

  void reset(Game game) => game.reset();
}
