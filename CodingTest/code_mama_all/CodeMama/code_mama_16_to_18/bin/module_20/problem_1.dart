import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    String postfix = infixToPostfix(input);
    print('$postfix');
  } else {
    print('Error: Input is null.');
  }
}

String infixToPostfix(String str) {
  Map<String, int> precedence = {
    '+': 1,
    '-': 1,
    '*': 2,
    '/': 2,
  };

  List<String> stack = [];
  String output = "";
  for (int i = 0; i < str.length; i++) {
    String cur = str[i];

    if (isNumeric(cur)) {
      output += cur;
    } else if (cur == "(") {
      stack.add(cur);
    } else if (cur == ")") {
      while (stack.isNotEmpty && stack.last != '(') {
        output += stack.removeLast();
      }
      stack.removeLast();
    } else {
      while (stack.isNotEmpty &&
          precedence.containsKey(stack.last) &&
          precedence[stack.last]! >= precedence[cur]!) {
        output += stack.removeLast();
      }
      stack.add(cur);
    }
  }
  while (stack.isNotEmpty) {
    output += stack.removeLast();
  }
  return output;
}

bool isNumeric(String c) {
  int ascii = c.codeUnitAt(0);
  return ascii >= 48 && ascii <= 57;
}
