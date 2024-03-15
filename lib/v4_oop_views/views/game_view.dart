import 'package:mastermind/v4_oop_views/models/game.dart';
import 'package:mastermind/v4_oop_views/views/board_view.dart';
import 'package:mastermind/v4_oop_views/views/title_view.dart';

class GameView {
  final TitleView _titleView;
  final BoardView _boardView;
  final Game _game;

  GameView()
      : _titleView = TitleView(),
        _boardView = BoardView(),
        _game = Game();

  void draw() {
    _titleView.draw();
    _boardView.draw(_game);
  }

  void reset() => _game.reset();
}
