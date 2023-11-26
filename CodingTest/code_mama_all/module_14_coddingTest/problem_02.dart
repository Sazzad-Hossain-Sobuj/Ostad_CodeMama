import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> numbers = input.split(' ');

  int a = int.parse(numbers[0]);
  int b = int.parse(numbers[1]);
  if (a > b) {
    int temp = a;
    a = b;
    b = temp;
  }

  int sum = 0;
  for (int i = a; i <= b; i++) {
    if (i % 2 == 1) {
      sum += i;
    }
  }
  print("$sum");
}
