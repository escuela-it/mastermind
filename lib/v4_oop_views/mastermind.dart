import 'package:mastermind/v4_oop_views/views/game_view.dart';
import 'package:mastermind/v4_oop_views/views/resume_view.dart';

class MasterMind {
  final GameView _gameView;
  final ResumeView _resumeView;

  MasterMind()
      : _gameView = GameView(),
        _resumeView = ResumeView();

  void play() {
    do {
      _gameView.reset();
      _gameView.draw();
    } while (_resumeView.interact());
  }
}
