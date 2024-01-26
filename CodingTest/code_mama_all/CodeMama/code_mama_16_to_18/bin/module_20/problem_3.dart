import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    String postfix = prefixToPostfix(input);
    print('$postfix');
  } else {
    print('Error: Input is null.');
  }
}

String prefixToPostfix(String str) {
  List<String> stack = [];
  String operators = "+-*/"; // Add other operators if needed
  String output = "";

  for (int i = str.length - 1; i >= 0; i--) {
    String cur = str[i];

    if (isNumeric(cur)) {
      stack.add(cur);
    } else if (operators.contains(cur)) {
      String operand1 = stack.removeLast();
      String operand2 = stack.removeLast();
      stack.add("$operand1$operand2$cur");
    }
  }

  if (stack.length == 1) {
    output = stack.first;
  } else {
    print('Error: Invalid prefix expression');
  }

  return output;
}

bool isNumeric(String c) {
  int ascii = c.codeUnitAt(0);
  return ascii >= 48 && ascii <= 57;
}
