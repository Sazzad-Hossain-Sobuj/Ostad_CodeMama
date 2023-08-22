import 'dart:io';
void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    double celsius = double.tryParse(input) ?? 0.0;
    double fahrenheit = (celsius * 9 / 5) + 32;

    print("The temperature in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)}");
  }
}

