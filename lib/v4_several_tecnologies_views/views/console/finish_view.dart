import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/finish_view_interface.dart';

class FinishView extends FinishViewInterface {
  @override
  void draw(bool win, String secretCombination) {
    if (win) {
      Console.write('YUHUUUUUUU, YOU WIN!!!');
    } else {
      Console.write('OHHHHH you lose!!!');
    }
    Console.write('secret combination: $secretCombination');
  }
}
