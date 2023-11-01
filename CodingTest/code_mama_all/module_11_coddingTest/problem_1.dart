import 'dart:io';

void main() {
  var input = stdin.readLineSync();
  var parts = input!.split(' ');

  if (parts.length != 3) {
    print("Please enter exactly 3 integers");
    return;
  }

  try {
    var wheels = int.parse(parts[0]);
    var carBodies = int.parse(parts[1]);
    var figures = int.parse(parts[2]);

    int completeCars = 0;

    while (wheels >= 4 && carBodies >= 1 && figures >= 2) {
      completeCars++;
      wheels -= 4;
      carBodies -= 1;
      figures -= 2;
    }

    print("$completeCars");
  } catch (e) {
    print("Invalid input");
  }
}
