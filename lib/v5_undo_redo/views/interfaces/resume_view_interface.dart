import 'package:mastermind/v5_undo_redo/controllers/resume_controller.dart';

abstract class ResumeViewInterface {
  final ResumeController _resumeController;

  ResumeController get resumeController => _resumeController;

  ResumeViewInterface(ResumeController resumeController) : _resumeController = resumeController;

  bool interact();
}
