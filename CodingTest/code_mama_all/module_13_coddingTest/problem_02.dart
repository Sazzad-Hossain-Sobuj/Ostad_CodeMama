import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<String> inputs = [];
  for (int i = 0; i < n; i++) {
    inputs.add(stdin.readLineSync()!);
  }

  int count = 0;
  List<String> data = [];

  for (int i = 0; i < n - 2; i++) {
    if (inputs[i][0] == 'F' && inputs[i + 1][0] == 'F' && inputs[i + 2][0] == 'T') {
      count++;
      data.add('${inputs[i]} ${inputs[i + 1]} ${inputs[i + 2]}');
    }
  }

  print(count);
  for (String form in data) {
    print(form);
  }
}
