import 'dart:io';

void write([Object? object = ""]) => stdout.writeln(object);
void writeInLine([Object? object = ""]) => stdout.write(object);
String? read() => stdin.readLineSync();

abstract class Console {
  static void write(Object? object, {bool padding = false}) {
    if (padding) stdout.writeln();
    stdout.writeln(object);
    if (padding) stdout.writeln();
  }

  static void writeInLine([Object? object = ""]) => stdout.write(object);

  static String? read() => stdin.readLineSync();

  static String? ask(String question) {
    stdout.write(question);
    return stdin.readLineSync();
  }
}
