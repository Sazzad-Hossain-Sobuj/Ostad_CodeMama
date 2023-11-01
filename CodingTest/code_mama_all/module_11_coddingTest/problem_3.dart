import 'dart:io';

void main() {
  var input = stdin.readLineSync();
  var parts = input!.split(' ');

  if (parts.isEmpty) {
    print("Please enter arrayLength boolean values.");
    return;
  }

  try {
    var arrayLength = int.parse(parts[0]);

    if (parts.length != arrayLength + 1) {
      print("Please enter exactly $arrayLength boolean values.");
      return;
    }

    int trueCount = 0;
    for (int i = 1; i < parts.length; i++) {
      int value = int.parse(parts[i]);
      if (value == 1) {
        trueCount++;
      }
    }

    print(trueCount);
  } catch (e) {
    print("Invalid input");
  }
}
