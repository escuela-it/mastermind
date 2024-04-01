import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v5_undo_redo/views/interfaces/title_view_interface.dart';

class TitleView extends TitleViewInterface {
  @override
  void draw() {
    Console.write('');
    Console.write('----- MASTERMIND -----');
    Console.write('');
  }
}
