import 'package:mastermind/utils/console.dart';

class WinnerView {
  void show(String secretCombination) {
    write('YUHUUUUUUU, YOU WIN!!!');
    write('secret combination: $secretCombination');
  }
}
