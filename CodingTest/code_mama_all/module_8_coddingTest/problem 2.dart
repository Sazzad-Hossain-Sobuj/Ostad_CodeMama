<<<<<<< HEAD
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
=======
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
>>>>>>> 62a83ded155c84c07de8488c35ff4eb7280a01a4
