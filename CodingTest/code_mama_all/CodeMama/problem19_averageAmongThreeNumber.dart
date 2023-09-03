import 'dart:io';
void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    List<String> num = input.split(' ');
    double n1 = double.tryParse(num[0]) ?? 0.0;
    double n2 = double.tryParse(num[1]) ?? 0.0;
    double n3 = double.tryParse(num[2]) ?? 0.0;
    double avg = (n1+n2+n3)/3;
    print('Average: ${avg.toStringAsFixed(2)}');
  }
}