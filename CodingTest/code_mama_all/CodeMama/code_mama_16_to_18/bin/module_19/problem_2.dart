import 'dart:io';

void main() {
  var code = stdin.readLineSync()!;
  print(isValidCode(code));
}

  bool isValidCode(String code) {
    if (code.length != 7) return false;
    if (code[0] != '#')   return false;

    for (int i = 1; i < code.length; i++) {
      var item = code[i];
      if (!((item.codeUnitAt(0) >= 48 && item.codeUnitAt(0) <= 57) ||
          (item.codeUnitAt(0) >= 65 && item.codeUnitAt(0) <= 70) ||
          (item.codeUnitAt(0) >= 97 && item.codeUnitAt(0) <= 102))) {
        return false;
      }
    }
    return true;
  }

