import 'package:mastermind/v4_several_tecnologies_views/models/game.dart';
import 'package:mastermind/v4_several_tecnologies_views/models/resume.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/console/game_view.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/console/resume_view.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/game_view_interface.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/resume_view_interface.dart';

class MasterMind {
  final GameViewInterface _gameViewInterface;
  final ResumeViewInterface _resumeViewInterface;
  final Game _game;
  final Resume _resume;

  MasterMind()
      : _gameViewInterface = GameView(),
        _resumeViewInterface = ResumeView(),
        _game = Game(),
        _resume = Resume();

  void play() {
    do {
      _gameViewInterface.reset(_game);
      _gameViewInterface.draw(_game);
    } while (_resumeViewInterface.interact(_resume));
  }
}
