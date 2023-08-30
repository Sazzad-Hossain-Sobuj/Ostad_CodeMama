import 'dart:io';
void main() {
  String? input = stdin.readLineSync();

  if (input != null) {
    double salary = double.tryParse(input) ?? 0.0;
    double bonus = (salary * 0.1);

    print(bonus.toInt());
  }
}
