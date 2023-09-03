<<<<<<< HEAD
import 'dart:io';
void main() {
  int year = int.parse(stdin.readLineSync()!);
  bool isLeapYear = (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
  if (isLeapYear) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }
}
=======
import 'dart:io';
void main() {
  int year = int.parse(stdin.readLineSync()!);
  bool isLeapYear = (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
  if (isLeapYear) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }
}
>>>>>>> origin/master
