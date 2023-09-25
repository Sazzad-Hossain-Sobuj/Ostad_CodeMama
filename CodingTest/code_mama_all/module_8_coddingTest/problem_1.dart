import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');
  int S = int.parse(inputList[0]);
  int E = int.parse(inputList[1]);
  int duration;

  if (E > S) {
    duration = E - S;
  } else {
    duration = 24 - S + E;
  }
  print('$duration');
}
