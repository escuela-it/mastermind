import 'package:mastermind/utils/console.dart';
import 'package:mastermind/utils/values.dart';
import 'package:mastermind/v5_controllers/models/game.dart';
import 'package:mastermind/v5_controllers/views/interfaces/ask_combination_view_interface.dart';

class AskCombinationView extends AskCombinationViewInterface {
  @override
  void interact(Game game) {
    String? data;

    do {
      Console.writeInLine('propose a combination (${Values.colors}): ');
      data = Console.read();
    } while (!_isLengthDataValid(data) || !_isDataCorrect(data!));

    game.addProposedCombiantion(data);
  }

  bool _isLengthDataValid(String? data) {
    return data != null && data.length == Values.combinationLength;
  }

  bool _isDataCorrect(String data) {
    for (int i = 0; i < data.length; i++) {
      if (!Values.colors.contains(data[i])) {
        return false;
      }
    }
    return true;
  }
}
