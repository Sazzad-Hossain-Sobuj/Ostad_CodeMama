import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    String prefix = infixToPrefix(input);
    print('$prefix');
  } else {
    print('Error: Input is null.');
  }
}

String infixToPrefix(String str) {
  Map<String, int> precedence = {
    '+': 1,
    '-': 1,
    '*': 2,
    '/': 2,
  };

  List<String> stack = [];
  String output = "";

  for (int i = str.length - 1; i >= 0; i--) {
    String cur = str[i];

    if (isNumeric(cur)) {
      output = cur + output; // Prepend the operand to the output
    } else if (cur == ")") {
      stack.add(cur);
    } else if (cur == "(") {
      while (stack.isNotEmpty && stack.last != ')') {
        output = stack.removeLast() + output;
      }
      stack.removeLast(); // Remove the '('
    } else {
      while (stack.isNotEmpty &&
          precedence.containsKey(stack.last) &&
          precedence[stack.last]! > precedence[cur]!) {
        output = stack.removeLast() + output;
      }
      stack.add(cur);
    }
  }

  while (stack.isNotEmpty) {
    output = stack.removeLast() + output;
  }

  return output;
}

bool isNumeric(String c) {
  int ascii = c.codeUnitAt(0);
  return ascii >= 48 && ascii <= 57;
}
