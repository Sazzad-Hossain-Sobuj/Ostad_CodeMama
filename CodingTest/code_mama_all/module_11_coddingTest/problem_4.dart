import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  bool isFunny = true;

  for (int i = 0; i < input!.length; i++) {
    if (i % 2 == 0 && input[i].toLowerCase() != input[i]) {
      isFunny = false;
      break;
    }
    if (i % 2 == 1 && input[i].toUpperCase() != input[i]) {
      isFunny = false;
      break;
    }
  }

  if (isFunny) {
    print("Yes");
  } else {
    print("No");
  }
}
