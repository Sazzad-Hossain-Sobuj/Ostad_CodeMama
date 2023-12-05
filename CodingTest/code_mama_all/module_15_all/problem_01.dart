import 'dart:io';

void main() {
  String S = stdin.readLineSync() ?? "";
  Set<String> uniqueChars = Set();

  for (int i = 0; i < S.length; i++) {
    uniqueChars.add(S[i]);
  }
  print("${uniqueChars.length}");
}
