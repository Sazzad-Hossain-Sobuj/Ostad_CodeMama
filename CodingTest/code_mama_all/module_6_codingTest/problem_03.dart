import 'dart:io';

void main() {
  int W = int.parse(stdin.readLineSync()!);
  int tableWidth = 300;
  int horizontalPosition = (W - tableWidth) ~/ 2;
  print(horizontalPosition);
}
