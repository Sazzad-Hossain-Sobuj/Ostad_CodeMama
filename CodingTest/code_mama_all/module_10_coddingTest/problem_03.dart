import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> parts = input.split(' ');
  String S = parts[0];
  int K = int.parse(parts[1]);

  // Convert the string S to a list of characters for easy manipulation
  List<String> SList = S.split('');

  int i = 0;

  // Change the digits while there are remaining changes and we haven't reached the end of the string
  while (K > 0 && i < SList.length) {
    if (i == 0 && SList[i] != '1') {
      SList[i] = '1';
      K--;
    } else if (i != 0 && SList[i] != '0') {
      SList[i] = '0';
      K--;
    }
    i++;
  }

  // Join the modified list back into a string
  String minimizedS = SList.join('');

  print("Min = $minimizedS");
}
