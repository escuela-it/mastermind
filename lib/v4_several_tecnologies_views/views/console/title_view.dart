import 'package:mastermind/utils/console.dart';
import 'package:mastermind/v4_several_tecnologies_views/views/interfaces/title_view_interface.dart';

class TitleView extends TitleViewInterface {
  @override
  void draw() {
    Console.write('');
    Console.write('----- MASTERMIND -----');
    Console.write('');
  }
}
