import 'package:mastermind/v4_several_tecnologies_views/models/resume.dart';
import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/resume_view_interface.dart';

class ResumeView extends ResumeViewInterface {
  @override
  bool interact(Resume resume) {
    do {
      resume.setResponse(Console.ask('¿otra partida (s/n)? ') ?? '');
    } while (!resume.isResponseCorrect());
    return resume.isResumed();
  }
}
