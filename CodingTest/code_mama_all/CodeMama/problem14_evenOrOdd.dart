<<<<<<< HEAD
import 'dart:io';
void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    int n = int.tryParse(input) ?? 0;

    if (n%2==0) {
      print('$n is an even number.');
    } else {
      print('$n is an odd number.');
    }
  }
=======
import 'dart:io';
void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    int n = int.tryParse(input) ?? 0;

    if (n%2==0) {
      print('$n is an even number.');
    } else {
      print('$n is an odd number.');
    }
  }
>>>>>>> origin/master
}