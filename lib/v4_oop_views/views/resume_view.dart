import 'package:mastermind/v4_oop_views/models/resume.dart';
import 'package:mastermind/v4_oop_views/utils/console.dart';

class ResumeView {
  final Resume _resume;

  ResumeView() : _resume = Resume();

  bool interact() {
    do {
      _resume.setResponse(Console.ask('¿otra partida (s/n)? ') ?? '');
    } while (!_resume.isResponseCorrect());
    return _resume.isResumed();
  }
}
