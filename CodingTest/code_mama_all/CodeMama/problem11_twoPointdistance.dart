import 'dart:io';
import 'dart:math';

void main() {
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();

  if (input1 != null && input2 != null) {
    List<double> coordinates1 = input1.split(" ").map((coord) => double.tryParse(coord) ?? 0.0).toList();
    List<double> coordinates2 = input2.split(" ").map((coord) => double.tryParse(coord) ?? 0.0).toList();

    double x = coordinates2[0] - coordinates1[0];
    double y = coordinates2[1] - coordinates1[1];
    double distance = sqrt(x * x + y * y);

    print("Distance: ${distance.toStringAsFixed(2)}");
  }
}

/* import 'dart:io';
import 'dart:math';

void main() {
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();

  if (input1 != null && input2 != null) {
    List<String> num1 = input1.split(' ');
    List<String> num2 = input2.split(' ');

    double a1 = double.tryParse(num1[0]) ?? 0.0;
    double b1 = double.tryParse(num1[1]) ?? 0.0;
    double a2 = double.tryParse(num2[0]) ?? 0.0;
    double b2 = double.tryParse(num2[1]) ?? 0.0;

    double result = sqrt((a2 - a1)*(a2 - a1)+ (b2 - b1)*(b2 - b1));
    print('Distance ${result.toStringAsFixed(2)}');
  }
}
*/

