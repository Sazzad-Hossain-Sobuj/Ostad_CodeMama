import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  int number = int.tryParse(input) ?? 0;
  bool isRepdigit = checkRepdigit(number);
  print(isRepdigit);
}

bool checkRepdigit(int num) {
  String numStr = num.toString();
  for (int i = 1; i < numStr.length; i++) {
    if (numStr[i] != numStr[0]) {
      return false;
    }
  }

  return true;
}
