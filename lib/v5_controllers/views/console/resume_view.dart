import 'package:mastermind/v5_controllers/views/interfaces/resume_view_interface.dart';

class ResumeView extends ResumeViewInterface {
  ResumeView(super.resumeController);

  @override
  bool interact() => resumeController.interact();
}