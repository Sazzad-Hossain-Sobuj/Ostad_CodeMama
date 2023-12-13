import 'dart:io';

void main() {
  String S = stdin.readLineSync()!;

  int result = evaluatePrefix(S);
  print("$result");
}

int evaluatePrefix(String S) {
  List<int> stack = [];

  for (int i = S.length - 1; i >= 0; i--) {
    String currentChar = S[i];

    if (isOperand(currentChar)) {
      stack.add(int.parse(currentChar));
    } else if (isOperator(currentChar)) {
      int operand1 = stack.removeLast();
      int operand2 = stack.removeLast();
      int operationResult = performOperation(operand1, operand2, currentChar);
      stack.add(operationResult);
    }
  }

  return stack.isEmpty ? 0 : stack.removeLast();
}

bool isOperand(String symbol) {
  return int.tryParse(symbol) != null;
}

bool isOperator(String symbol) {
  return symbol == '+' || symbol == '-' || symbol == '*' || symbol == '/';
}

int performOperation(int operand1, int operand2, String operator) {
  switch (operator) {
    case '+':
      return operand1 + operand2;
    case '-':
      return operand1 - operand2;
    case '*':
      return operand1 * operand2;
    case '/':
      return operand1 ~/ operand2; // Using ~/ for integer division
    default:
      throw ArgumentError("Invalid operator: $operator");
  }
}
