import 'package:mastermind/v5_undo_redo/controllers/play_controller.dart';
import 'package:mastermind/v5_undo_redo/controllers/reset_controller.dart';
import 'package:mastermind/v5_undo_redo/controllers/resume_controller.dart';
import 'package:mastermind/v5_undo_redo/models/game.dart';
import 'package:mastermind/v5_undo_redo/models/resume.dart';
import 'package:mastermind/v5_undo_redo/views/console/board_view.dart';
import 'package:mastermind/v5_undo_redo/views/console/game_view.dart';
import 'package:mastermind/v5_undo_redo/views/console/resume_view.dart';
import 'package:mastermind/v5_undo_redo/views/console/title_view.dart';
import 'package:mastermind/v5_undo_redo/views/interfaces/game_view_interface.dart';
import 'package:mastermind/v5_undo_redo/views/interfaces/resume_view_interface.dart';

class MasterMind {
  late GameViewInterface _gameViewInterface;
  late ResumeViewInterface _resumeViewInterface;
  final Game _game;
  final Resume _resume;

  late ResetController _resetController;
  late PlayController _playController;
  late ResumeController _resumeController;

  MasterMind()
      : _game = Game(),
        _resume = Resume() {
    _resetController = ResetController(_game);
    _playController = PlayController(_game);
    _resumeController = ResumeController(_resume);
    _gameViewInterface = GameView(_resetController, TitleView(), BoardView(_playController));
    _resumeViewInterface = ResumeView(_resumeController);
  }

  void play() {
    do {
      _gameViewInterface.reset();
      _gameViewInterface.draw();
    } while (_resumeViewInterface.interact());
  }
}
