import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  if (areBracketsBalanced(input)) {
    print("Brackets are balanced.");
  } else {
    print("Brackets are not balanced.");
  }
}

bool areBracketsBalanced(String input) {
  List<String> stack = [];
  Map<String, String> bracketPairs = {
    '}': '{',
    ']': '[',
    ')': '(',
  };

  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i];

    if (bracketPairs.containsValue(currentChar)) {
      stack.add(currentChar);
    } else if (bracketPairs.containsKey(currentChar)) {
      if (stack.isEmpty || stack.removeLast() != bracketPairs[currentChar]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}
