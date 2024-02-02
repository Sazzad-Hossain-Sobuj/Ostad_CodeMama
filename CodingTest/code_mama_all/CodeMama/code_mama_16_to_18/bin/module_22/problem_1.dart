import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;
  str = str.trim();
  var map = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
  };

  int k = map[str]!;
  print( k % 2 );
}