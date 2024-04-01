import 'package:mastermind/v5_controllers/models/result_combination.dart';
import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v5_controllers/views/interfaces/proposed_combination_view_interface.dart';

class ProposedCombinationView extends ProposedCombinationViewInterface {
  @override
  void draw(String proposedCombination, ResultCombination resultCombination) => Console.write(
      '$proposedCombination ----> ${resultCombination.getBlacks()} blacks, ${resultCombination.getWhites()} whites');
}
