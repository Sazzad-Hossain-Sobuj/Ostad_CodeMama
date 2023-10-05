import 'dart:io';

void main() {
  int count = 0;

  for (int i = 1; i <= 10; i++) {
    String input = stdin.readLineSync() ?? '';

    if (input.contains('T')) {
      count++;
    }
  }
  print("$count");
}
