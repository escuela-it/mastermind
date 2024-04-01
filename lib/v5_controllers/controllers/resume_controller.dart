import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v5_controllers/models/resume.dart';

class ResumeController {
  final Resume _resume;
  ResumeController(Resume resume) : _resume = resume;

  bool interact() {
    do {
      _resume.setResponse(Console.ask('¿otra partida (s/n)? ') ?? '');
    } while (!_resume.isResponseCorrect());
    return _resume.isResumed();
  }
}
