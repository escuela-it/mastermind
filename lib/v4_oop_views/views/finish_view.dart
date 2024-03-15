import 'package:mastermind/v4_oop_views/utils/console.dart';

class FinishView {
  void draw(bool win, String secretCombination) {
    if (win) {
      Console.write('YUHUUUUUUU, YOU WIN!!!');
    } else {
      Console.write('OHHHHH you lose!!!');
    }
    Console.write('secret combination: $secretCombination');
  }
}
