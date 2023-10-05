import 'dart:io';

void main() {
  String S = stdin.readLineSync() ?? "";

  String afterTransformed = transformed(S);
  print("$afterTransformed");
}

String transformed(String input) {
  if (input.length <= 2) {
    return input;
  }

  StringBuffer transformed = StringBuffer();
  for (int i = 0; i < input.length; i++) {
    transformed.write(input[i]);

    if ((i + 1) % 2 == 0) {
      transformed.write('x');
    }
  }
  return transformed.toString();
}
