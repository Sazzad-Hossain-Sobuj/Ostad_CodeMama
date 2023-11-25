import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> N = input.split(' ');

  int evenCount = 0;
  for (String number in N) {
    int n = int.parse(number);
    if (n % 2 == 0) {
      evenCount++;
    }
  }
  print("$evenCount");
}
