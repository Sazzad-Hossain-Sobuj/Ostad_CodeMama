import 'dart:io';

void main() {
  String? S = stdin.readLineSync();

  if (S == null || S.length != 5) {
    print("Invalid input.");
    return;
  }
  String firstOperand = S[0];
  String operator = S[2];
  String secondOperand = S[4];

  int num1 = int.tryParse(firstOperand) ?? 0;
  int num2 = int.tryParse(secondOperand) ?? 0;

  int result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print("Division by zero is not possible.");
        return;
      }
      result = num1 ~/ num2;
      break;
    default:
      print("Invalid operator.");
      return;
  }

  print("$result");
}
