import 'package:mastermind/v4_oop_views/models/result_combination.dart';
import 'package:mastermind/v4_oop_views/utils/console.dart';

class ProposedCombinationView {
  void draw(String proposedCombination, ResultCombination resultCombination) => Console.write(
      '$proposedCombination ----> ${resultCombination.getBlacks()} blacks, ${resultCombination.getWhites()} whites');
}
