import 'package:mastermind/utils/console.dart';

class LooserView {
  void show(String secretCombination) {
    write('OHHHHH you lose!!!');
    write('secret combination: $secretCombination');
  }
}
