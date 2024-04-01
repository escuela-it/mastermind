import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v5_undo_redo/views/interfaces/attemp_view_interface.dart';

class AttempView extends AttempViewInterface {
  @override
  void draw(int attemp) {
    Console.write('$attemp attemps:');
    Console.write('xxxx');
  }
}
