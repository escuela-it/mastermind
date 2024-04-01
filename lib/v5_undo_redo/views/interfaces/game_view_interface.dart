import 'package:mastermind/v5_undo_redo/controllers/reset_controller.dart';
import 'package:mastermind/v5_undo_redo/views/interfaces/board_view_interface.dart';
import 'package:mastermind/v5_undo_redo/views/interfaces/title_view_interface.dart';

abstract class GameViewInterface {
  final ResetController _resetController;
  final TitleViewInterface _titleViewInterface;
  final BoardViewInterface _boardViewInterface;

  GameViewInterface(
    ResetController resetController,
    TitleViewInterface titleViewInterface,
    BoardViewInterface boardViewInterface,
  )   : _resetController = resetController,
        _titleViewInterface = titleViewInterface,
        _boardViewInterface = boardViewInterface;

  void draw() {
    _titleViewInterface.draw();
    _boardViewInterface.draw();
  }

  void reset() => _resetController.reset();
}
