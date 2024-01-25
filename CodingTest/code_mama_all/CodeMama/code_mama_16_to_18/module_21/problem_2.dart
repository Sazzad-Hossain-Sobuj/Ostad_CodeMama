import 'dart:io';

void main() {

  String input = stdin.readLineSync()!;
  String result = removeTrailingZeroes(input);
  print(result);
}

String removeTrailingZeroes(String input) {
  List<String> parts = input.split('.');

  if (parts.length == 1) {
    return input;
  }

  String decimalPart = parts[1].replaceAll(RegExp(r'0+$'), '');

  if (decimalPart.isEmpty) {
    return parts[0];
  }
  return '${parts[0]}.${decimalPart}';
}
