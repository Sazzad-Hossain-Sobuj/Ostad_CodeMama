import 'dart:io';

double calculateFinalPrice(int originalPrice, int discountPercentage) {
  double discountAmount = originalPrice * (discountPercentage / 100);
  double finalPrice = originalPrice - discountAmount;
  return finalPrice;
}

void main() {
  var input = stdin.readLineSync();
  var parts = input!.split(' ');

  if (parts.length != 2) {
    print("Please enter exactly 2 integers");
    return;
  }

  try {
    var originalPrice = int.parse(parts[0]);
    var discountPercentage = int.parse(parts[1]);

    double finalPrice = calculateFinalPrice(originalPrice, discountPercentage);

    print("Price: ${finalPrice.toStringAsFixed(2)}");
  } catch (e) {
    print("Invalid input.");
  }
}
