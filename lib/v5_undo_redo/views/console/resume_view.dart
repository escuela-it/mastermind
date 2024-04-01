import 'package:mastermind/v5_undo_redo/views/interfaces/resume_view_interface.dart';

class ResumeView extends ResumeViewInterface {
  ResumeView(super.resumeController);

  @override
  bool interact() => resumeController.interact();
}
